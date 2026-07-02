-- Consolida permisos para pruebas funcionales del modulo Agua Tratada.
-- Ejecutar en Supabase antes de simular registros reales desde el ERP.

do $$
begin
  if exists (
    select 1
    from information_schema.columns
    where table_schema = 'public'
      and table_name = 'AguaTratada'
      and column_name = 'aÃ±o'
  ) and not exists (
    select 1
    from information_schema.columns
    where table_schema = 'public'
      and table_name = 'AguaTratada'
      and column_name = 'año'
  ) then
    alter table public."AguaTratada" rename column "aÃ±o" to "año";
  end if;
end $$;

alter table public."AguaTratada" enable row level security;

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

comment on policy agua_tratada_insert_operativos on public."AguaTratada" is
  'Permite pruebas funcionales y registro operativo de Agua Tratada para usuarios autenticados con perfil ERP permitido.';
