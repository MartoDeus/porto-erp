create or replace view public.v_powerbi_diesel as
with vales as (
  select
    k.fecha,
    k.unidad_id,
    string_agg(distinct nullif(m.n_vale, ''), ' / ' order by nullif(m.n_vale, '')) as n_vale
  from public.diesel_kardex k
  left join public.diesel_movimientos m
    on m.kardex_id = k.id
   and m.estado = 'vigente'
   and nullif(m.n_vale, '') is not null
  where k.estado = 'vigente'
  group by k.fecha, k.unidad_id
), base as (
  select
    r.fecha,
    extract(year from r.fecha)::int as year,
    case extract(month from r.fecha)::int
      when 1 then 'Enero'
      when 2 then 'Febrero'
      when 3 then 'Marzo'
      when 4 then 'Abril'
      when 5 then 'Mayo'
      when 6 then 'Junio'
      when 7 then 'Julio'
      when 8 then 'Agosto'
      when 9 then 'Septiembre'
      when 10 then 'Octubre'
      when 11 then 'Noviembre'
      when 12 then 'Diciembre'
    end as mes,
    case
      when r.unidad_tipo = 'plataforma' then 'PLATAFORMA'
      when public.normalize_erp_text(r.unidad_nombre) in ('ORO', 'ROGUE', 'MR_BOB', 'JADE_IMI', 'JADE') then 'REMOLCADORES'
      when public.normalize_erp_text(r.unidad_nombre) in ('TALARA', 'PARINAS', 'LOBITOS_EXPRESS_CARGA', 'LOBITOS_EXPRESS_CONSUMO', 'LOBITOS_EXPRESS', 'NEPTUNE', 'NEPTUNE_EXPRESS', 'OLYMPIC', 'OLYMPIC_EXPRESS') then 'NAVES PASAJEROS - ABASTECIMIENTO'
      when public.normalize_erp_text(r.unidad_nombre) in ('DONALD_ROBIN', 'SHEILA_R', 'SHEYLA', 'IRIS', 'VILMA', 'ROSLYN', 'CHIP_II', 'BUCKLEY_EXPRESS', 'CABO_BLANCO', 'ELIZABETH', 'LJ_KELLEY') then 'NAVES RECORRIDO'
      else null
    end as tipo_agrupado,
    r.unidad_nombre as nave,
    r.stock_inicial_dia as stock_i,
    coalesce(r.cantidad_despachada, 0) + coalesce(r.cantidad_transferida, 0) as cantidad_despachada,
    r.recibido_de,
    r.consumo_total as cantidad_consumida,
    null::numeric as millas_nauticas,
    r.stock_final_dia as stock_f,
    v.n_vale
  from public.v_diesel_resumen_diario r
  left join vales v
    on v.fecha = r.fecha
   and v.unidad_id = r.unidad_id
)
select
  fecha as "FECHA",
  year as "Year",
  mes as "MES",
  tipo_agrupado as "TIPO AGRUPADO",
  nave as "NAVE",
  stock_i as "STOCK I.",
  cantidad_despachada as "CANTIDAD DESPACHADA",
  recibido_de as "RECIBIDO DE",
  cantidad_consumida as "CANTIDAD_CONSUMIDA",
  millas_nauticas as "MILLAS NAUTICAS",
  stock_f as "STOCK F.",
  n_vale as "N° VALE"
from base;

grant select on public.v_powerbi_diesel to anon, authenticated, service_role;

notify pgrst, 'reload schema';
