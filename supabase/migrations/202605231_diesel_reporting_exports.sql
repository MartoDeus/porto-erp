-- Diesel reporting/export layer.
-- This migration keeps raw records detailed, but exposes stable query outputs
-- for the two user exports:
-- 1) detailed kardex export
-- 2) daily consolidated PDF summary

alter table public.diesel_kardex
  add column if not exists total_recibido numeric(14,3) not null default 0,
  add column if not exists recibido_de text;

create index if not exists diesel_kardex_fecha_estado_idx
  on public.diesel_kardex(fecha, estado);

create index if not exists diesel_movimientos_tipo_estado_idx
  on public.diesel_movimientos(tipo, estado);

create or replace view public.v_diesel_kardex_detalle
with (security_invoker = true) as
select
  k.id as kardex_id,
  k.fecha,
  k.turno,
  t.nombre as turno_nombre,
  u.codigo as unidad_codigo,
  u.nombre as unidad_nombre,
  u.tipo as unidad_tipo,
  registrador.nombre as registrado_por,
  origen.nombre as nave_origen,
  k.stock_inicial,
  k.total_recibido,
  k.recibido_de,
  k.total_recarga,
  k.total_despacho,
  k.total_transferencia,
  k.total_consumo,
  k.sondaje_reingreso,
  k.sondaje_diferencia,
  (k.sondaje_reingreso - k.sondaje_diferencia) as sondaje_neto,
  k.stock_final,
  k.tiene_movimiento,
  k.estado as kardex_estado,
  k.observaciones,
  k.cabecera,
  k.modulos_estado,
  m.id as movimiento_id,
  m.tipo as movimiento_tipo,
  m.cantidad as movimiento_cantidad,
  mov_origen.nombre as movimiento_origen,
  mov_destino.nombre as movimiento_destino,
  m.detalle as movimiento_detalle,
  m.estado as movimiento_estado,
  k.created_at,
  k.updated_at
from public.diesel_kardex k
join public.unidades u on u.id = k.unidad_id
join public.turnos t on t.codigo = k.turno
left join public.perfiles registrador on registrador.id = k.usuario_registrador_id
left join public.unidades origen on origen.id = k.nave_origen_id
left join public.diesel_movimientos m on m.kardex_id = k.id
left join public.unidades mov_origen on mov_origen.id = m.nave_origen_id
left join public.unidades mov_destino on mov_destino.id = m.nave_destino_id;

create or replace view public.v_diesel_resumen_diario
with (security_invoker = true) as
with base as (
  select
    k.*,
    u.codigo as unidad_codigo,
    u.nombre as unidad_nombre,
    u.tipo as unidad_tipo,
    u.orden as unidad_orden,
    t.orden as turno_orden,
    p.nombre as registrado_por
  from public.diesel_kardex k
  join public.unidades u on u.id = k.unidad_id
  join public.turnos t on t.codigo = k.turno
  left join public.perfiles p on p.id = k.usuario_registrador_id
  where k.estado = 'vigente'
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
    sum(total_recibido) as cantidad_recibida,
    string_agg(distinct nullif(recibido_de, ''), ' / ') as recibido_de,
    sum(total_recarga) as total_recarga,
    sum(case when turno = 'diurno' then total_consumo else 0 end) as consumo_dia,
    sum(case when turno = 'nocturno' then total_consumo else 0 end) as consumo_noche,
    sum(total_consumo) as consumo_total,
    sum(total_despacho) as cantidad_despachada,
    sum(total_transferencia) as cantidad_transferida,
    sum(sondaje_reingreso - sondaje_diferencia) as sondaje_neto,
    max(case when turno = 'diurno' then registrado_por end) as registrado_por_dia,
    max(case when turno = 'nocturno' then registrado_por end) as registrado_por_noche,
    max(case when turno = 'diurno' then cabecera ->> 'capitan' end) as capitan_dia,
    max(case when turno = 'diurno' then cabecera ->> 'motorista' end) as motorista_dia,
    max(case when turno = 'nocturno' then cabecera ->> 'capitan' end) as capitan_noche,
    max(case when turno = 'nocturno' then cabecera ->> 'motorista' end) as motorista_noche,
    bool_or(tiene_movimiento) as tiene_movimiento,
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
  registros_turno
from consolidado;

create or replace view public.v_diesel_resumen_diario_totales
with (security_invoker = true) as
select
  fecha,
  count(*) as unidades,
  sum(stock_inicial_dia) as stock_inicial_total,
  sum(cantidad_recibida) as cantidad_recibida_total,
  sum(total_recarga) as recarga_total,
  sum(consumo_dia) as consumo_dia_total,
  sum(consumo_noche) as consumo_noche_total,
  sum(consumo_total) as consumo_total,
  sum(cantidad_despachada) as cantidad_despachada_total,
  sum(cantidad_transferida) as cantidad_transferida_total,
  sum(sondaje_neto) as sondaje_neto_total,
  sum(stock_final_dia) as stock_final_total
from public.v_diesel_resumen_diario
group by fecha;

comment on view public.v_diesel_kardex_detalle is
  'Detailed diesel kardex export. One row per kardex/movement pair, preserving raw turn-level information.';

comment on view public.v_diesel_resumen_diario is
  'Daily diesel PDF/export summary. One row per unit per day, consolidating diurno and nocturno records.';

comment on view public.v_diesel_resumen_diario_totales is
  'Daily diesel summary totals for PDF footer and report totals.';

comment on table public.auditoria is
  'Low-cost audit table. Store only important actions and compact changed fields, not full row snapshots unless a critical correction requires it.';
