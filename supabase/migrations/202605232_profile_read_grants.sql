-- Allow authenticated app users to read their ERP profile and role.
-- Row-level security policies still decide which rows are visible.

grant usage on schema public to authenticated;

grant select on table public.roles to authenticated;
grant select on table public.perfiles to authenticated;

grant update (
  username,
  nombre,
  rol_id,
  estado,
  updated_at
) on table public.perfiles to authenticated;
