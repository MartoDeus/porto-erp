-- Ensure supervisor and coordinator can read diesel data used by Excel/PDF exports.
grant select on public.v_diesel_resumen_diario to authenticated;
grant select on public.unidades to authenticated;
grant select on public.turnos to authenticated;
grant select on public.perfiles to authenticated;
grant select on public.diesel_kardex to authenticated;
grant select on public.diesel_movimientos to authenticated;

drop policy if exists diesel_kardex_select_operativos on public.diesel_kardex;
create policy diesel_kardex_select_operativos
on public.diesel_kardex
for select
to authenticated
using (
  public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista')
);

drop policy if exists diesel_movimientos_select_operativos on public.diesel_movimientos;
create policy diesel_movimientos_select_operativos
on public.diesel_movimientos
for select
to authenticated
using (
  public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista')
);

drop policy if exists perfiles_select_admin_supervisor on public.perfiles;
create policy perfiles_select_admin_supervisor
on public.perfiles
for select
to authenticated
using (
  public.current_user_role() in ('administrador', 'supervisor', 'coordinador')
);

comment on policy diesel_kardex_select_operativos on public.diesel_kardex is
  'Allows administrator, supervisor, coordinator, controller and analyst roles to read diesel kardex data for consultation and exports.';

comment on policy diesel_movimientos_select_operativos on public.diesel_movimientos is
  'Allows administrator, supervisor, coordinator, controller and analyst roles to read diesel movements for consultation and exports.';
