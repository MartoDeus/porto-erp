-- Allow logged-in users to read the diesel daily summary used by Consulta.

grant select on public.v_diesel_resumen_diario to authenticated;
grant select on public.unidades to authenticated;
grant select on public.turnos to authenticated;

drop policy if exists unidades_select_authenticated on public.unidades;
create policy unidades_select_authenticated
on public.unidades
for select
to authenticated
using (true);

drop policy if exists turnos_select_authenticated on public.turnos;
create policy turnos_select_authenticated
on public.turnos
for select
to authenticated
using (true);
