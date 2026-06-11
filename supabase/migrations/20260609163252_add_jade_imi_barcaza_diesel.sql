insert into public.unidades (codigo, nombre, tipo, orden)
values ('JADE_IMI', 'JADE (IMI)', 'nave', 27)
on conflict (codigo) do update
set nombre = excluded.nombre,
    tipo = excluded.tipo,
    orden = excluded.orden,
    updated_at = now();

create or replace function public.is_diesel_dispatcher_ship(p_unidad_id uuid)
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select exists (
    select 1
    from public.unidades u
    where u.id = p_unidad_id
      and public.normalize_erp_text(u.nombre) in (
        'TALARA',
        'PARINAS',
        'LOBITOS_EXPRESS_CARGA',
        'ORO',
        'ROGUE',
        'MR_BOB',
        'JADE_IMI'
      )
  );
$$;

grant execute on function public.is_diesel_dispatcher_ship(uuid) to authenticated;
