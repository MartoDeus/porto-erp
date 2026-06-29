-- Mantiene coherente el stock cuando una nave/barcaza registra movimientos.
-- Caso clave: una barcaza puede despachar a una plataforma. Ese despacho debe
-- restar al stock del turno actual y arrastrarse como stock inicial del turno
-- siguiente y de los dias posteriores.

create or replace function public.recalcular_diesel_kardex(p_kardex_id uuid)
returns void
language plpgsql
security definer
set search_path = public
as $$
declare
  v_totals record;
  v_recibido_de text;
begin
  select
    coalesce(sum(cantidad) filter (where lower(tipo) = 'recibido'), 0) as recibido,
    coalesce(sum(cantidad) filter (where lower(tipo) = 'recarga'), 0) as recarga,
    coalesce(sum(cantidad) filter (where lower(tipo) = 'despacho'), 0) as despacho,
    coalesce(sum(cantidad) filter (where lower(tipo) = 'transferencia'), 0) as transferencia,
    coalesce(sum(cantidad) filter (where lower(tipo) = 'consumo'), 0) as consumo
  into v_totals
  from public.diesel_movimientos
  where kardex_id = p_kardex_id
    and estado = 'vigente';

  select string_agg(distinct nullif(detalle ->> 'origen_texto', ''), ' / ')
  into v_recibido_de
  from public.diesel_movimientos
  where kardex_id = p_kardex_id
    and estado = 'vigente'
    and lower(tipo) = 'recibido';

  update public.diesel_kardex k
  set
    total_recibido = v_totals.recibido,
    total_recarga = v_totals.recarga,
    total_despacho = v_totals.despacho,
    total_transferencia = v_totals.transferencia,
    total_consumo = v_totals.consumo,
    recibido_de = coalesce(v_recibido_de, k.recibido_de),
    stock_final =
      k.stock_inicial
      + v_totals.recibido
      + v_totals.recarga
      - v_totals.consumo
      - v_totals.despacho
      - v_totals.transferencia
      + case
          when lower(coalesce(k.cabecera ->> 'sondaje_aplica_stock', 'false')) in ('true', '1', 'yes', 'si', 'sí')
          then coalesce(k.sondaje_reingreso, 0) - coalesce(k.sondaje_diferencia, 0)
          else 0
        end,
    tiene_movimiento = (
      v_totals.recibido <> 0
      or v_totals.recarga <> 0
      or v_totals.despacho <> 0
      or v_totals.transferencia <> 0
      or v_totals.consumo <> 0
      or k.sondaje_reingreso <> 0
      or k.sondaje_diferencia <> 0
    ),
    updated_at = now()
  where k.id = p_kardex_id;
end;
$$;

comment on function public.recalcular_diesel_kardex(uuid) is
  'Recalcula totales y stock Diesel. Recibido/recarga suman; consumo/despacho/transferencia restan; sondaje solo impacta si cabecera.sondaje_aplica_stock=true.';

create or replace function public.recalcular_diesel_historial(
  p_unidad_id uuid,
  p_fecha date,
  p_turno text default 'diurno'
)
returns void
language plpgsql
security definer
set search_path = public
as $$
declare
  v_turno text := lower(coalesce(p_turno, 'diurno'));
  v_carry numeric(14,3);
  v_item record;
begin
  if p_unidad_id is null or p_fecha is null then
    return;
  end if;

  select k.stock_final
  into v_carry
  from public.diesel_kardex k
  where k.unidad_id = p_unidad_id
    and k.estado = 'vigente'
    and (
      k.fecha < p_fecha
      or (
        k.fecha = p_fecha
        and public.diesel_turno_orden(k.turno) < public.diesel_turno_orden(v_turno)
      )
    )
  order by k.fecha desc, public.diesel_turno_orden(k.turno) desc, k.updated_at desc
  limit 1;

  for v_item in
    select k.id, k.stock_inicial
    from public.diesel_kardex k
    where k.unidad_id = p_unidad_id
      and k.estado = 'vigente'
      and (
        k.fecha > p_fecha
        or (
          k.fecha = p_fecha
          and public.diesel_turno_orden(k.turno) >= public.diesel_turno_orden(v_turno)
        )
      )
    order by k.fecha asc, public.diesel_turno_orden(k.turno) asc, k.created_at asc
  loop
    update public.diesel_kardex
    set stock_inicial = coalesce(v_carry, v_item.stock_inicial),
        updated_at = now()
    where id = v_item.id;

    perform public.recalcular_diesel_kardex(v_item.id);

    select stock_final
    into v_carry
    from public.diesel_kardex
    where id = v_item.id;
  end loop;
end;
$$;

grant execute on function public.recalcular_diesel_historial(uuid, date, text) to authenticated;

create or replace function public.recalcular_diesel_historial_nave(
  p_nave text,
  p_fecha date,
  p_turno text default 'diurno'
)
returns void
language plpgsql
security definer
set search_path = public
as $$
declare
  v_unidad_id uuid;
begin
  v_unidad_id := public.resolve_unidad_id(p_nave);

  if v_unidad_id is null then
    return;
  end if;

  perform public.recalcular_diesel_historial(v_unidad_id, p_fecha, p_turno);
end;
$$;

grant execute on function public.recalcular_diesel_historial_nave(text, date, text) to authenticated;
