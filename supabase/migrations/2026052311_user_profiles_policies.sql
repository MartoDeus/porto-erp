-- User profile/auth bridge.
-- Supabase Auth owns login credentials. public.perfiles stores ERP profile data.

alter table public.perfiles
  add column if not exists email text unique;

create or replace function public.current_user_role()
returns text
language sql
stable
security definer
set search_path = public
as $$
  select r.codigo
  from public.perfiles p
  join public.roles r on r.id = p.rol_id
  where p.id = auth.uid()
    and p.estado = 'activo'
  limit 1;
$$;

create or replace function public.handle_new_auth_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
declare
  default_role_id smallint;
begin
  select id into default_role_id
  from public.roles
  where codigo = 'visitante'
  limit 1;

  insert into public.perfiles (
    id,
    email,
    username,
    nombre,
    rol_id,
    estado
  )
  values (
    new.id,
    new.email,
    coalesce(new.raw_user_meta_data ->> 'username', split_part(new.email, '@', 1)),
    coalesce(new.raw_user_meta_data ->> 'nombre', new.raw_user_meta_data ->> 'name', split_part(new.email, '@', 1)),
    default_role_id,
    'activo'
  )
  on conflict (id) do update set
    email = excluded.email,
    username = coalesce(public.perfiles.username, excluded.username),
    nombre = coalesce(public.perfiles.nombre, excluded.nombre),
    updated_at = now();

  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;

create trigger on_auth_user_created
after insert on auth.users
for each row execute function public.handle_new_auth_user();

drop policy if exists roles_select_authenticated on public.roles;
create policy roles_select_authenticated
on public.roles
for select
to authenticated
using (true);

drop policy if exists perfiles_select_own on public.perfiles;
create policy perfiles_select_own
on public.perfiles
for select
to authenticated
using (id = auth.uid());

drop policy if exists perfiles_select_admin_supervisor on public.perfiles;
create policy perfiles_select_admin_supervisor
on public.perfiles
for select
to authenticated
using (public.current_user_role() in ('administrador', 'supervisor'));

drop policy if exists perfiles_update_admin on public.perfiles;
create policy perfiles_update_admin
on public.perfiles
for update
to authenticated
using (public.current_user_role() = 'administrador')
with check (public.current_user_role() = 'administrador');

comment on column public.perfiles.email is
  'Email from Supabase Auth. Used only for identity/profile lookup, not for passwords.';

comment on function public.handle_new_auth_user() is
  'Creates a low-risk ERP profile when a Supabase Auth user is created. Default role is visitante until an admin changes it.';

comment on function public.current_user_role() is
  'Returns the active ERP role code for auth.uid(), used by RLS policies.';
