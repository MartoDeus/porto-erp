-- Passenger register persistence.
-- One row represents one contractor/routine passenger movement.

alter table public.pasajeros_registros
  add column if not exists embarcacion text,
  add column if not exists rango text,
  add column if not exists zona text,
  add column if not exists observaciones text,
  add column if not exists anulado_at timestamptz,
  add column if not exists anulado_por uuid references public.perfiles(id);

create index if not exists pasajeros_movimiento_fecha_idx
  on public.pasajeros_registros(movimiento, fecha);

create index if not exists pasajeros_contratista_fecha_idx
  on public.pasajeros_registros(contratista, fecha);

create index if not exists pasajeros_estado_fecha_idx
  on public.pasajeros_registros(estado, fecha);

grant usage on schema public to authenticated;

grant select, insert on table public.pasajeros_registros to authenticated;

grant update (
  estado,
  observaciones,
  updated_by,
  updated_at,
  anulado_at,
  anulado_por
) on table public.pasajeros_registros to authenticated;

drop policy if exists pasajeros_select_operativos on public.pasajeros_registros;
create policy pasajeros_select_operativos
on public.pasajeros_registros
for select
to authenticated
using (
  public.current_user_role() in ('administrador', 'supervisor', 'controlador', 'analista')
);

drop policy if exists pasajeros_insert_operativos on public.pasajeros_registros;
create policy pasajeros_insert_operativos
on public.pasajeros_registros
for insert
to authenticated
with check (
  created_by = auth.uid()
  and coalesce(updated_by, auth.uid()) = auth.uid()
  and estado = 'vigente'
  and public.current_user_role() in ('administrador', 'supervisor', 'controlador')
);

drop policy if exists pasajeros_update_operativos on public.pasajeros_registros;
create policy pasajeros_update_operativos
on public.pasajeros_registros
for update
to authenticated
using (
  public.current_user_role() in ('administrador', 'supervisor', 'controlador')
)
with check (
  updated_by = auth.uid()
  and public.current_user_role() in ('administrador', 'supervisor', 'controlador')
);

create or replace view public.v_pasajeros_detalle
with (security_invoker = true)
as
select
  p.id,
  p.fecha,
  p.movimiento,
  p.tipo_pasajero,
  p.rango,
  coalesce(p.embarcacion, u.nombre) as embarcacion,
  p.turno,
  p.cantidad,
  p.contratista,
  p.rutina,
  p.zona,
  p.observaciones,
  p.estado,
  creador.nombre as creado_por,
  p.created_at,
  p.updated_at
from public.pasajeros_registros p
left join public.unidades u on u.id = p.embarcacion_id
left join public.perfiles creador on creador.id = p.created_by;

create or replace view public.v_pasajeros_resumen_diario
with (security_invoker = true)
as
select
  fecha,
  movimiento,
  tipo_pasajero,
  coalesce(embarcacion, u.nombre) as embarcacion,
  turno,
  contratista,
  rutina,
  zona,
  sum(cantidad) as total_pasajeros,
  count(*) as total_registros
from public.pasajeros_registros p
left join public.unidades u on u.id = p.embarcacion_id
where p.estado = 'vigente'
group by
  fecha,
  movimiento,
  tipo_pasajero,
  coalesce(embarcacion, u.nombre),
  turno,
  contratista,
  rutina,
  zona;

comment on table public.pasajeros_registros is
  'Consolidated passenger movements. Use estado=anulado instead of physical deletes.';

comment on view public.v_pasajeros_detalle is
  'Detailed passenger export view. It stores no duplicate data.';

comment on view public.v_pasajeros_resumen_diario is
  'Daily passenger summary view for reporting/export. It stores no duplicate data.';
