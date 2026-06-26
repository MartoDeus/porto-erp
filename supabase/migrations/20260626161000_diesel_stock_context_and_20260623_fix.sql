-- Usa el contexto del registro para obtener el stock anterior correcto.
-- Evita tomar registros posteriores o del mismo turno como stock inicial.

drop function if exists public.ultimo_stock_diesel(text);

create or replace function public.ultimo_stock_diesel(
  p_nave text,
  p_fecha date default null,
  p_turno text default null
)
returns table (
  stock_final numeric,
  fecha date,
  turno text,
  kardex_id uuid
)
language sql
stable
security definer
set search_path = public
as $$
  select
    k.stock_final,
    k.fecha,
    k.turno,
    k.id as kardex_id
  from public.diesel_kardex k
  where k.unidad_id = public.resolve_unidad_id(p_nave)
    and k.estado = 'vigente'
    and (
      p_fecha is null
      or k.fecha < p_fecha
      or (
        k.fecha = p_fecha
        and p_turno is not null
        and public.diesel_turno_orden(k.turno) < public.diesel_turno_orden(p_turno)
      )
    )
  order by k.fecha desc, public.diesel_turno_orden(k.turno) desc, k.updated_at desc
  limit 1;
$$;

grant execute on function public.ultimo_stock_diesel(text, date, text) to authenticated;

comment on function public.ultimo_stock_diesel(text, date, text) is
  'Returns the latest saved diesel stock_final before the selected date/shift so the register starts from the correct previous balance.';

do $$
declare
  v_olympic_id uuid := public.resolve_unidad_id('OLYMPIC EXPRESS');
  v_sheila_id uuid := public.resolve_unidad_id('SHEILA R');
  v_start_id uuid;
  v_start_turno text;
  v_carry numeric(14,3);
  v_item record;
begin
  select id, turno
  into v_start_id, v_start_turno
  from public.diesel_kardex
  where unidad_id = v_olympic_id
    and fecha = date '2026-06-23'
    and estado = 'vigente'
  order by public.diesel_turno_orden(turno), created_at
  limit 1;

  if v_start_id is not null then
    update public.diesel_kardex
    set stock_inicial = 2048,
        updated_at = now()
    where id = v_start_id;

    perform public.recalcular_diesel_kardex(v_start_id);

    select stock_final
    into v_carry
    from public.diesel_kardex
    where id = v_start_id;

    for v_item in
      select id
      from public.diesel_kardex
      where unidad_id = v_olympic_id
        and estado = 'vigente'
        and (
          fecha > date '2026-06-23'
          or (
            fecha = date '2026-06-23'
            and public.diesel_turno_orden(turno) > public.diesel_turno_orden(v_start_turno)
          )
        )
      order by fecha, public.diesel_turno_orden(turno), created_at
    loop
      update public.diesel_kardex
      set stock_inicial = v_carry,
          updated_at = now()
      where id = v_item.id;

      perform public.recalcular_diesel_kardex(v_item.id);

      select stock_final
      into v_carry
      from public.diesel_kardex
      where id = v_item.id;
    end loop;
  end if;

  select id, turno
  into v_start_id, v_start_turno
  from public.diesel_kardex
  where unidad_id = v_sheila_id
    and fecha = date '2026-06-23'
    and estado = 'vigente'
  order by public.diesel_turno_orden(turno), created_at
  limit 1;

  if v_start_id is not null then
    update public.diesel_kardex
    set stock_inicial = 406,
        updated_at = now()
    where id = v_start_id;

    perform public.recalcular_diesel_kardex(v_start_id);

    select stock_final
    into v_carry
    from public.diesel_kardex
    where id = v_start_id;

    for v_item in
      select id
      from public.diesel_kardex
      where unidad_id = v_sheila_id
        and estado = 'vigente'
        and (
          fecha > date '2026-06-23'
          or (
            fecha = date '2026-06-23'
            and public.diesel_turno_orden(turno) > public.diesel_turno_orden(v_start_turno)
          )
        )
      order by fecha, public.diesel_turno_orden(turno), created_at
    loop
      update public.diesel_kardex
      set stock_inicial = v_carry,
          updated_at = now()
      where id = v_item.id;

      perform public.recalcular_diesel_kardex(v_item.id);

      select stock_final
      into v_carry
      from public.diesel_kardex
      where id = v_item.id;
    end loop;
  end if;
end;
$$;
