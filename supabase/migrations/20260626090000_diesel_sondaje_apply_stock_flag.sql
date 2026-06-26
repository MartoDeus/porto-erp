-- Permite guardar reingreso/diferencia de sondaje como control
-- y decidir por registro si impacta o no el stock final.

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
          when coalesce((k.cabecera ->> 'sondaje_aplica_stock')::boolean, false)
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
  'Recalcula stock Diesel. Los sondajes se guardan siempre; solo impactan stock cuando cabecera.sondaje_aplica_stock=true.';
