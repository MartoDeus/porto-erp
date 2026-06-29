-- Permite que usuarios con rol visitante registren y consulten Agua Tratada durante pruebas operativas.

grant usage on schema public to authenticated;
grant select, insert on table public."AguaTratada" to authenticated;

drop policy if exists agua_tratada_select_operativos on public."AguaTratada";
create policy agua_tratada_select_operativos
on public."AguaTratada"
for select
to authenticated
using (
  public.current_user_role() in (
    'administrador',
    'supervisor',
    'coordinador',
    'controlador',
    'analista',
    'visitante'
  )
);

drop policy if exists agua_tratada_insert_operativos on public."AguaTratada";
create policy agua_tratada_insert_operativos
on public."AguaTratada"
for insert
to authenticated
with check (
  coalesce(created_by, auth.uid()) = auth.uid()
  and public.current_user_role() in (
    'administrador',
    'supervisor',
    'coordinador',
    'controlador',
    'analista',
    'visitante'
  )
);
