with usuarios(username, nombre, rol_codigo) as (
  values
    ('08691075', 'Yañez Carrasco Elder Leonel', 'coordinador'),
    ('47038747', 'Merino Garcia Damaris Liseth', 'supervisor'),
    ('45604716', 'Quino Quino Jhosep Edward', 'supervisor'),
    ('45292287', 'Castro Currasco Carmen Rosa', 'supervisor')
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
    ('08691075', 'Yañez Carrasco Elder Leonel', 'coordinador'),
    ('47038747', 'Merino Garcia Damaris Liseth', 'supervisor'),
    ('45604716', 'Quino Quino Jhosep Edward', 'supervisor'),
    ('45292287', 'Castro Currasco Carmen Rosa', 'supervisor')
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
