create or replace view public.v_diesel_resumen_diario
with (security_invoker = true) as
with movimientos_resumen as (
  select
    m.kardex_id,
    coalesce(sum(m.cantidad) filter (where lower(m.tipo) = 'recibido'), 0) as cantidad_recibida,
    coalesce(sum(m.cantidad) filter (where lower(m.tipo) = 'recarga'), 0) as total_recarga,
    coalesce(sum(m.cantidad) filter (where lower(m.tipo) = 'despacho'), 0) as cantidad_despachada,
    coalesce(sum(m.cantidad) filter (where lower(m.tipo) = 'transferencia'), 0) as cantidad_transferida,
    coalesce(sum(m.cantidad) filter (where lower(m.tipo) = 'consumo'), 0) as consumo_total,
    string_agg(distinct nullif(m.detalle ->> 'origen_texto', ''), ' / ')
      filter (where lower(m.tipo) = 'recibido') as recibido_de,
    count(*) filter (where m.estado = 'vigente') as movimientos_vigentes
  from public.diesel_movimientos m
  where m.estado = 'vigente'
  group by m.kardex_id
),
base as (
  select
    k.id,
    k.fecha,
    k.unidad_id,
    k.turno,
    k.stock_inicial,
    k.sondaje_reingreso,
    k.sondaje_diferencia,
    coalesce(nullif(k.cabecera ->> 'sondaje_ini', '')::numeric, 0) as sondaje_ini,
    coalesce(nullif(k.cabecera ->> 'sondaje_fin', '')::numeric, 0) as sondaje_fin,
    case
      when k.cabecera ? 'sondaje_ini' or k.cabecera ? 'sondaje_fin' then
        coalesce(nullif(k.cabecera ->> 'sondaje_ini', '')::numeric, 0)
        + coalesce(nullif(k.cabecera ->> 'sondaje_fin', '')::numeric, 0)
      else k.sondaje_reingreso - k.sondaje_diferencia
    end as sondaje_neto_turno,
    k.cabecera,
    k.tiene_movimiento,
    k.created_at,
    u.codigo as unidad_codigo,
    u.nombre as unidad_nombre,
    u.tipo as unidad_tipo,
    u.orden as unidad_orden,
    t.orden as turno_orden,
    p.nombre as registrado_por,
    coalesce(mr.cantidad_recibida, 0) as cantidad_recibida,
    coalesce(mr.total_recarga, 0) as total_recarga,
    coalesce(mr.cantidad_despachada, 0) as cantidad_despachada,
    coalesce(mr.cantidad_transferida, 0) as cantidad_transferida,
    coalesce(mr.consumo_total, 0) as consumo_total,
    coalesce(mr.recibido_de, k.recibido_de) as recibido_de
  from public.diesel_kardex k
  join public.unidades u on u.id = k.unidad_id
  join public.turnos t on t.codigo = k.turno
  left join public.perfiles p on p.id = k.usuario_registrador_id
  left join movimientos_resumen mr on mr.kardex_id = k.id
  where k.estado = 'vigente'
    or coalesce(mr.movimientos_vigentes, 0) > 0
),
consolidado as (
  select
    fecha,
    unidad_id,
    min(unidad_codigo) as unidad_codigo,
    min(unidad_nombre) as unidad_nombre,
    min(unidad_tipo) as unidad_tipo,
    min(unidad_orden) as unidad_orden,
    (array_agg(stock_inicial order by turno_orden, created_at))[1] as stock_inicial_dia,
    sum(cantidad_recibida) as cantidad_recibida,
    string_agg(distinct nullif(recibido_de, ''), ' / ') as recibido_de,
    sum(total_recarga) as total_recarga,
    sum(case when turno = 'diurno' then consumo_total else 0 end) as consumo_dia,
    sum(case when turno = 'nocturno' then consumo_total else 0 end) as consumo_noche,
    sum(consumo_total) as consumo_total,
    sum(cantidad_despachada) as cantidad_despachada,
    sum(cantidad_transferida) as cantidad_transferida,
    sum(sondaje_ini) as sondaje_ini,
    sum(sondaje_fin) as sondaje_fin,
    sum(sondaje_neto_turno) as sondaje_neto,
    max(case when turno = 'diurno' then registrado_por end) as registrado_por_dia,
    max(case when turno = 'nocturno' then registrado_por end) as registrado_por_noche,
    max(case when turno = 'diurno' then cabecera ->> 'capitan' end) as capitan_dia,
    max(case when turno = 'diurno' then cabecera ->> 'motorista' end) as motorista_dia,
    max(case when turno = 'nocturno' then cabecera ->> 'capitan' end) as capitan_noche,
    max(case when turno = 'nocturno' then cabecera ->> 'motorista' end) as motorista_noche,
    bool_or(
      tiene_movimiento
      or cantidad_recibida <> 0
      or total_recarga <> 0
      or cantidad_despachada <> 0
      or cantidad_transferida <> 0
      or consumo_total <> 0
      or sondaje_neto_turno <> 0
    ) as tiene_movimiento,
    count(*) as registros_turno
  from base
  group by fecha, unidad_id
)
select
  fecha,
  unidad_id,
  unidad_codigo,
  unidad_nombre,
  unidad_tipo,
  unidad_orden,
  stock_inicial_dia,
  cantidad_recibida,
  recibido_de,
  total_recarga,
  consumo_dia,
  consumo_noche,
  consumo_total,
  cantidad_despachada,
  cantidad_transferida,
  sondaje_neto,
  stock_inicial_dia
    + cantidad_recibida
    + total_recarga
    - consumo_total
    - cantidad_despachada
    - cantidad_transferida
    + sondaje_neto as stock_final_dia,
  capitan_dia,
  motorista_dia,
  capitan_noche,
  motorista_noche,
  registrado_por_dia,
  registrado_por_noche,
  tiene_movimiento,
  registros_turno,
  sondaje_ini,
  sondaje_fin
from consolidado;
