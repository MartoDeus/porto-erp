-- Allow supervisor and coordinator roles to add and modify operational data.
-- Physical deletes remain unavailable; records should be corrected or marked by estado.

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
  public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista')
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
  and public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador')
);

drop policy if exists pasajeros_update_operativos on public.pasajeros_registros;
create policy pasajeros_update_operativos
on public.pasajeros_registros
for update
to authenticated
using (
  public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador')
)
with check (
  updated_by = auth.uid()
  and public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador')
);

grant select, insert on table public.diesel_kardex to authenticated;
grant select, insert on table public.diesel_movimientos to authenticated;

grant update (
  usuario_registrador_id,
  nave_origen_id,
  stock_inicial,
  stock_final,
  total_recarga,
  total_recibido,
  recibido_de,
  total_despacho,
  total_transferencia,
  total_consumo,
  sondaje_reingreso,
  sondaje_diferencia,
  capitan_turno,
  motorista_turno,
  acta_sondaje,
  n_vale_recarga,
  n_vale_despacho,
  modulos_estado,
  cabecera,
  observaciones,
  tiene_movimiento,
  estado,
  updated_by,
  updated_at,
  anulado_at,
  anulado_por
) on table public.diesel_kardex to authenticated;

grant update (
  tipo,
  nave_origen_id,
  nave_destino_id,
  cantidad,
  n_vale,
  detalle,
  estado,
  updated_by,
  updated_at,
  anulado_at,
  anulado_por
) on table public.diesel_movimientos to authenticated;

drop policy if exists diesel_kardex_select_operativos on public.diesel_kardex;
create policy diesel_kardex_select_operativos
on public.diesel_kardex
for select
to authenticated
using (
  public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista')
);

drop policy if exists diesel_kardex_insert_operativos on public.diesel_kardex;
create policy diesel_kardex_insert_operativos
on public.diesel_kardex
for insert
to authenticated
with check (
  coalesce(created_by, auth.uid()) = auth.uid()
  and coalesce(updated_by, auth.uid()) = auth.uid()
  and public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador')
);

drop policy if exists diesel_kardex_update_operativos on public.diesel_kardex;
create policy diesel_kardex_update_operativos
on public.diesel_kardex
for update
to authenticated
using (
  public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador')
)
with check (
  coalesce(updated_by, auth.uid()) = auth.uid()
  and public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador')
);

drop policy if exists diesel_movimientos_select_operativos on public.diesel_movimientos;
create policy diesel_movimientos_select_operativos
on public.diesel_movimientos
for select
to authenticated
using (
  public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista')
);

drop policy if exists diesel_movimientos_insert_operativos on public.diesel_movimientos;
create policy diesel_movimientos_insert_operativos
on public.diesel_movimientos
for insert
to authenticated
with check (
  coalesce(created_by, auth.uid()) = auth.uid()
  and coalesce(updated_by, auth.uid()) = auth.uid()
  and public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador')
);

drop policy if exists diesel_movimientos_update_operativos on public.diesel_movimientos;
create policy diesel_movimientos_update_operativos
on public.diesel_movimientos
for update
to authenticated
using (
  public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador')
)
with check (
  coalesce(updated_by, auth.uid()) = auth.uid()
  and public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador')
);

drop policy if exists bitacora_eventos_insert_controlador on public.bitacora_eventos;
create policy bitacora_eventos_insert_controlador
on public.bitacora_eventos
for insert
to authenticated
with check (
  public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador')
  and created_by = auth.uid()
);

do $$
declare
  v_function_sql text;
begin
  select replace(
    pg_get_functiondef('public.registrar_diesel(jsonb)'::regprocedure),
    'not in (''administrador'', ''supervisor'', ''controlador'')',
    'not in (''administrador'', ''supervisor'', ''coordinador'', ''controlador'')'
  )
  into v_function_sql;

  execute v_function_sql;
end;
$$;

do $$
declare
  v_function_sql text;
begin
  select replace(
    pg_get_functiondef('public.registrar_bitacora_evento(jsonb)'::regprocedure),
    'not in (''administrador'', ''controlador'')',
    'not in (''administrador'', ''supervisor'', ''coordinador'', ''controlador'')'
  )
  into v_function_sql;

  execute v_function_sql;
end;
$$;

grant execute on function public.registrar_diesel(jsonb) to authenticated;
grant execute on function public.registrar_bitacora_evento(jsonb) to authenticated;

comment on policy pasajeros_insert_operativos on public.pasajeros_registros is
  'Administrator, supervisor, coordinator and controller can add passenger records.';

comment on policy diesel_kardex_update_operativos on public.diesel_kardex is
  'Administrator, supervisor, coordinator and controller can update diesel kardex records without physical delete.';

comment on policy bitacora_eventos_insert_controlador on public.bitacora_eventos is
  'Administrator, supervisor, coordinator and controller can register Bitacora events.';
