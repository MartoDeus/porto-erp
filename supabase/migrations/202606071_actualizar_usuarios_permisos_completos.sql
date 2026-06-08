insert into public.roles (codigo, nombre, descripcion)
values
  ('administrador', 'Administrador', 'Acceso total al sistema'),
  ('analista', 'Analista de Operaciones', 'Acceso operativo completo temporal'),
  ('controlador', 'Controlador de Muelle Tortuga', 'Acceso operativo completo temporal'),
  ('coordinador', 'Coordinador de Operaciones', 'Acceso operativo completo temporal'),
  ('supervisor', 'Supervisor de Operaciones', 'Acceso operativo completo temporal')
on conflict (codigo) do update
set nombre = excluded.nombre,
    descripcion = excluded.descripcion;

with usuarios(username, nombre, rol_codigo) as (
  values
    ('46234473', 'Cespedes Rosales Javier Jonathan', 'controlador'),
    ('77128290', 'Checco Sánchez Martín Elías', 'analista'),
    ('42840397', 'Herrera Anzualdo Juan Carlos', 'coordinador'),
    ('03835981', 'Inga Valiente José Augusto', 'controlador'),
    ('72079280', 'Morales Ruesta Vania Fernanda', 'supervisor'),
    ('72530903', 'Panta Pingo Betty Isabel', 'analista'),
    ('43782334', 'Pérez Moran Jimmy', 'controlador'),
    ('71920224', 'Timana Quiroz Renato Fabricio', 'supervisor')
)
update public.perfiles p
set nombre = u.nombre,
    rol_id = r.id,
    estado = 'activo',
    updated_at = now()
from usuarios u
join public.roles r on r.codigo = u.rol_codigo
where p.username = u.username;

with usuarios(username, nombre, rol_codigo) as (
  values
    ('46234473', 'Cespedes Rosales Javier Jonathan', 'controlador'),
    ('77128290', 'Checco Sánchez Martín Elías', 'analista'),
    ('42840397', 'Herrera Anzualdo Juan Carlos', 'coordinador'),
    ('03835981', 'Inga Valiente José Augusto', 'controlador'),
    ('72079280', 'Morales Ruesta Vania Fernanda', 'supervisor'),
    ('72530903', 'Panta Pingo Betty Isabel', 'analista'),
    ('43782334', 'Pérez Moran Jimmy', 'controlador'),
    ('71920224', 'Timana Quiroz Renato Fabricio', 'supervisor')
),
auth_match as (
  select
    au.id,
    au.email,
    u.username,
    u.nombre,
    r.id as rol_id
  from auth.users au
  join usuarios u on u.username in (
    au.raw_user_meta_data ->> 'username',
    au.raw_user_meta_data ->> 'dni',
    au.raw_user_meta_data ->> 'documento',
    split_part(au.email, '@', 1)
  )
  join public.roles r on r.codigo = u.rol_codigo
)
insert into public.perfiles (id, email, username, nombre, rol_id, estado)
select id, email, username, nombre, rol_id, 'activo'
from auth_match
on conflict (id) do update
set email = excluded.email,
    username = excluded.username,
    nombre = excluded.nombre,
    rol_id = excluded.rol_id,
    estado = 'activo',
    updated_at = now();

grant select on public.roles to authenticated;
grant select on public.perfiles to authenticated;
grant select on public.unidades to authenticated;
grant select on public.turnos to authenticated;
grant select on public.diesel_kardex to authenticated;
grant select on public.diesel_movimientos to authenticated;
grant select on public.pasajeros_registros to authenticated;
grant select on public.bitacora_eventos to authenticated;
grant select on public.v_diesel_resumen_diario to authenticated;

grant insert, update on public.diesel_kardex to authenticated;
grant insert, update on public.diesel_movimientos to authenticated;
grant insert, update on public.pasajeros_registros to authenticated;
grant insert, update on public.bitacora_eventos to authenticated;

drop policy if exists perfiles_select_admin_supervisor on public.perfiles;
drop policy if exists perfiles_select_operational on public.perfiles;
create policy perfiles_select_operational
on public.perfiles
for select
to authenticated
using (
  public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista')
  or id = auth.uid()
);

drop policy if exists pasajeros_select_operational on public.pasajeros_registros;
create policy pasajeros_select_operational
on public.pasajeros_registros
for select
to authenticated
using (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'));

drop policy if exists pasajeros_insert_operational on public.pasajeros_registros;
create policy pasajeros_insert_operational
on public.pasajeros_registros
for insert
to authenticated
with check (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'));

drop policy if exists pasajeros_update_operational on public.pasajeros_registros;
create policy pasajeros_update_operational
on public.pasajeros_registros
for update
to authenticated
using (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'))
with check (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'));

drop policy if exists diesel_kardex_select_operational on public.diesel_kardex;
create policy diesel_kardex_select_operational
on public.diesel_kardex
for select
to authenticated
using (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'));

drop policy if exists diesel_kardex_insert_operational on public.diesel_kardex;
create policy diesel_kardex_insert_operational
on public.diesel_kardex
for insert
to authenticated
with check (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'));

drop policy if exists diesel_kardex_update_operational on public.diesel_kardex;
create policy diesel_kardex_update_operational
on public.diesel_kardex
for update
to authenticated
using (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'))
with check (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'));

drop policy if exists diesel_movimientos_select_operational on public.diesel_movimientos;
create policy diesel_movimientos_select_operational
on public.diesel_movimientos
for select
to authenticated
using (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'));

drop policy if exists diesel_movimientos_insert_operational on public.diesel_movimientos;
create policy diesel_movimientos_insert_operational
on public.diesel_movimientos
for insert
to authenticated
with check (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'));

drop policy if exists diesel_movimientos_update_operational on public.diesel_movimientos;
create policy diesel_movimientos_update_operational
on public.diesel_movimientos
for update
to authenticated
using (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'))
with check (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'));

drop policy if exists bitacora_select_operational on public.bitacora_eventos;
create policy bitacora_select_operational
on public.bitacora_eventos
for select
to authenticated
using (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'));

drop policy if exists bitacora_insert_operational on public.bitacora_eventos;
create policy bitacora_insert_operational
on public.bitacora_eventos
for insert
to authenticated
with check (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'));

drop policy if exists bitacora_update_operational on public.bitacora_eventos;
create policy bitacora_update_operational
on public.bitacora_eventos
for update
to authenticated
using (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'))
with check (public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista'));

do $$
declare
  rec record;
  original_ddl text;
  patched_ddl text;
begin
  for rec in
    select p.oid
    from pg_proc p
    join pg_namespace n on n.oid = p.pronamespace
    where n.nspname = 'public'
      and p.proname in (
        'registrar_diesel',
        'editar_diesel_registro',
        'registrar_bitacora_evento',
        'clasificar_bitacora_eventos'
      )
  loop
    original_ddl := pg_get_functiondef(rec.oid);
    patched_ddl := original_ddl;
    patched_ddl := replace(
      patched_ddl,
      'not in (''administrador'', ''supervisor'', ''coordinador'', ''controlador'')',
      'not in (''administrador'', ''supervisor'', ''coordinador'', ''controlador'', ''analista'')'
    );
    patched_ddl := replace(
      patched_ddl,
      'not in (''administrador'', ''supervisor'', ''coordinador'')',
      'not in (''administrador'', ''supervisor'', ''coordinador'', ''controlador'', ''analista'')'
    );
    patched_ddl := replace(
      patched_ddl,
      'not in (''administrador'', ''controlador'')',
      'not in (''administrador'', ''supervisor'', ''coordinador'', ''controlador'', ''analista'')'
    );

    if patched_ddl <> original_ddl then
      execute patched_ddl;
    end if;
  end loop;
end $$;

grant execute on function public.registrar_diesel(jsonb) to authenticated;
grant execute on function public.editar_diesel_registro(jsonb) to authenticated;
grant execute on function public.registrar_bitacora_evento(jsonb) to authenticated;
grant execute on function public.clasificar_bitacora_eventos(jsonb) to authenticated;
