with platforms(codigo, nombre, orden) as (
  values
    ('ESPERANZA_1', 'ESPERANZA 1', 1001),
    ('GENERADOR_ES1', 'GENERADOR ES1', 1002),
    ('GRUA_ES1', 'GRUA ES1', 1003),
    ('ES1', 'ES1', 1004),
    ('LT12', 'LT12', 1005),
    ('PP', 'PP', 1006),
    ('DD', 'DD', 1007),
    ('NN', 'NN', 1008),
    ('GG', 'GG', 1009),
    ('PN2', 'PN2', 1010),
    ('PN1', 'PN1', 1011),
    ('YY', 'YY', 1012),
    ('PN3', 'PN3', 1013),
    ('PN5', 'PN5', 1014),
    ('PN7', 'PN7', 1015),
    ('PN9', 'PN9', 1016),
    ('HH', 'HH', 1017),
    ('LO13', 'LO13', 1018),
    ('LO14', 'LO14', 1019),
    ('LO16', 'LO16', 1020),
    ('LO6', 'LO6', 1021),
    ('LO7', 'LO7', 1022),
    ('LO11', 'LO11', 1023),
    ('LO9', 'LO9', 1024),
    ('LO19', 'LO19', 1025),
    ('LL', 'LL', 1026),
    ('LO10', 'LO10', 1027),
    ('LO18', 'LO18', 1028),
    ('LO3', 'LO3', 1029),
    ('LO4', 'LO4', 1030),
    ('KK', 'KK', 1031),
    ('R', 'R', 1032),
    ('BB', 'BB', 1033),
    ('SP1', 'SP1', 1034),
    ('CC', 'CC', 1035),
    ('PN8', 'PN8', 1036),
    ('SP1A', 'SP1A', 1037),
    ('TT', 'TT', 1038),
    ('ZZ', 'ZZ', 1039)
)
insert into public.unidades (codigo, nombre, tipo, orden)
select codigo, nombre, 'plataforma', orden
from platforms
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
      and (
        public.normalize_erp_text(u.nombre) in (
          'TALARA',
          'PARINAS',
          'LOBITOS_EXPRESS_CARGA',
          'ORO',
          'ROGUE',
          'MR_BOB',
          'JADE_IMI'
        )
        or u.tipo = 'plataforma'
      )
  );
$$;

grant execute on function public.is_diesel_dispatcher_ship(uuid) to authenticated;
