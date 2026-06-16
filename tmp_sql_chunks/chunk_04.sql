insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '712b06d7-a54d-424c-9628-9aeb9948d979',
  '03ba89a0-bce6-4a2b-a561-fd3cb68e69f9',
  date '2026-06-09',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  10.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:59:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:59:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e96f337b-8ec6-425b-9164-b21df4523837',
  '03ba89a0-bce6-4a2b-a561-fd3cb68e69f9',
  date '2026-06-09',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('CABO BLANCO'),
  200.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "5799"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:00:00-05'::timestamptz,
  '5799',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:00:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '33a6e2e9-8403-4766-9957-269749b7370f',
  'a11cae0b-02f1-4260-8af9-840a44e2d6eb',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  36.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 09:01:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 09:01:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '53dbd0b4-ad98-440d-9f9f-6ae1688e8455',
  '081c2ae3-8a4a-4e4e-b1a4-a9da9d5776bd',
  date '2026-06-09',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  18.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:02:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:02:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c00c8e17-ee14-4136-a25c-c9ddca5bdf55',
  '08ccc944-f545-4599-b4dc-763aaf8c7246',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 09:03:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 09:03:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '222ee53b-3288-42b4-a9c1-c5220244fe80',
  '3fdff1b3-5a55-4b48-9d66-2b7e175a8d5f',
  date '2026-06-09',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:04:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:04:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1dc258d5-0b0a-4a9b-ac48-d1d6d70dbdbb',
  '4bdd24cc-a09b-4e97-846f-ba899f7217c9',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  42.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 09:05:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 09:05:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '240f18d5-76f1-4665-a07b-ce163bf16a6b',
  'fe3f5101-241e-4984-a9b3-74d6b8c85879',
  date '2026-06-09',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  45.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:06:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:06:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e7acd8ac-c99c-4a19-abb4-6495e9c65c16',
  '29f1a605-bd11-47d9-b250-9f1b3efe9a82',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  89.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 09:07:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 09:07:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '4468dcfa-1c87-4c5b-a509-46dc979387db',
  '702706bc-c0dd-44a4-bbef-f483b5f2fb33',
  date '2026-06-09',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  45.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:08:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:08:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '4a0d801b-0e7e-485c-8ba5-b5e3bd6ae369',
  '767d9e12-d30c-49d6-a8ab-bf90e264a1e5',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  62.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 09:09:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 09:09:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'ea411f53-27ee-4fd3-993a-ee325813a97d',
  '767d9e12-d30c-49d6-a8ab-bf90e264a1e5',
  date '2026-06-09',
  'diurno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('LJ KELLEY'),
  200.0,
  '{"origen_texto": "TALARA", "n_vale": "5758"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 09:10:00-05'::timestamptz,
  '5758',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 09:10:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '14358916-b8f0-408e-a51c-da86a8f0c49a',
  '69e94018-e694-4278-8bcc-e318badf2afd',
  date '2026-06-09',
  'diurno',
  'despacho',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('LJ KELLEY'),
  200.0,
  '{"destino_texto": "LJ KELLEY", "n_vale": "5758"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 09:10:00-05'::timestamptz,
  '5758',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 09:10:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'f00f625c-ae88-404b-a2e1-ef93f7aeb2c1',
  'b67f858e-3184-48ba-8a7d-dcc2db49db88',
  date '2026-06-09',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('KK'),
  public.resolve_unidad_id('KK'),
  3.0,
  '{"origen_texto": "KK", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:12:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:12:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0e128a08-1624-49f7-b0c8-8a12bbcebaf8',
  'b67f858e-3184-48ba-8a7d-dcc2db49db88',
  date '2026-06-09',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('KK'),
  3.0,
  '{"origen_texto": "ORO", "n_vale": "80749"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:13:00-05'::timestamptz,
  '80749',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:13:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b992f440-4a13-4d66-a59b-94cc383f1c01',
  '3fdff1b3-5a55-4b48-9d66-2b7e175a8d5f',
  date '2026-06-09',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('KK'),
  3.0,
  '{"destino_texto": "KK", "n_vale": "80749"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:13:00-05'::timestamptz,
  '80749',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 21:13:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3b231292-f136-486b-a174-06f6c02c73af',
  '3298bbf5-8b9c-4949-9d72-d06143cf01b3',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  141.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:15:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:15:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '9babee73-cc76-40c3-8e0e-d571a8245c96',
  'ee262381-2dec-4669-9df6-5f9eed17cad3',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  26.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:16:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:16:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'ee26e4eb-605b-4758-9568-24d6a2d5a01f',
  'ee262381-2dec-4669-9df6-5f9eed17cad3',
  date '2026-06-10',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('PARIÑAS'),
  1300.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "6054"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:17:00-05'::timestamptz,
  '6054',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:17:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '7830704e-44b7-48d2-bbb4-8a96f20ba031',
  'ddf55421-7595-4736-8e2d-92801e6b3ef7',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  120.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:18:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:18:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0dc4299b-7d09-4573-b077-a2653e11a4a7',
  'fedae839-1583-46cb-8773-2e0d21b75b0e',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  16.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:19:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:19:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0066fbe4-7acc-46a8-ae50-da0bd7ea58a4',
  '80c66149-19ec-467e-9ba3-ae984aa5cd1b',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  164.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:20:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:20:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '09156a69-f6ff-477c-964c-09afab97d06a',
  'e4c5c943-4714-4112-a622-3ff6fd506013',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  2.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:21:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:21:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '358bf084-a6f9-4acb-9b7e-7e301a39c0a1',
  'e4c5c943-4714-4112-a622-3ff6fd506013',
  date '2026-06-10',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  200.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "6053"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:22:00-05'::timestamptz,
  '6053',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:22:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'ed3f32c1-3210-4050-878c-6bed896f8801',
  '7ab92130-cee8-44f1-b65e-283e279624ac',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('DONALD ROBIN'),
  public.resolve_unidad_id('DONALD ROBIN'),
  85.0,
  '{"origen_texto": "DONALD ROBIN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:23:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:23:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1e55d678-8c8c-46f1-b6a2-74a390ed2762',
  'a1436276-79e3-4e4f-a565-9723bcc8680e',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  49.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:24:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:24:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '445bdf57-3342-4533-a9b1-8d9a019011cd',
  'a1436276-79e3-4e4f-a565-9723bcc8680e',
  date '2026-06-10',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('SHEILA R'),
  200.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "5795"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:25:00-05'::timestamptz,
  '5795',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:25:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '52fdc4eb-72e5-444d-bb09-db52158d9104',
  'b223e532-8daa-4729-b73d-110790ad1bad',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  47.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:26:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:26:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3a92ac0f-304c-40c7-8475-03345fd9ddc7',
  '0aad849d-af39-470c-ac80-100ec5609d56',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  47.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:27:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:27:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '098897d5-8e5d-40b5-9a76-80a8ca52697e',
  '2a4e31d7-2e5c-42a4-b3b3-daf1369611d2',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  46.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:28:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:28:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '4869bfaf-deba-4ce3-bfe8-6d95437edb19',
  'f8c5a6a1-9712-4521-a6e9-5004395d433c',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROSLYN'),
  public.resolve_unidad_id('ROSLYN'),
  50.0,
  '{"origen_texto": "ROSLYN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:29:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:29:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '231221d8-f2e2-49ae-af5d-3421282db5e8',
  'ca047d55-9783-4b05-846d-9282a9bc7720',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  75.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:30:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:30:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '19b6d8c3-83e8-4faf-b395-dbcae5ad7c24',
  '77b04d7f-a640-480e-80b8-26d9ba746951',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  74.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:31:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:31:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd5cbc294-948b-42e6-a562-dad3bd45d912',
  '6877357b-5050-491a-bc38-35e1b6ca0b05',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  29.0,
  '{"origen_texto": "BUCKLEY EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:32:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:32:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '7adbe975-6115-4670-87bc-58cd24c8b421',
  '6877357b-5050-491a-bc38-35e1b6ca0b05',
  date '2026-06-10',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  100.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "6052"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:33:00-05'::timestamptz,
  '6052',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:33:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '99f3ca2e-36b4-44c0-a500-d2559b044ccc',
  'f49a510c-004e-432c-9d9d-b37ab33f4854',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  5.0,
  '{"origen_texto": "BUCKLEY EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:34:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:34:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'cc15dc56-561b-4fdc-8186-496a6ce3c601',
  '0ab8fd89-beda-4c56-9d9f-865a030ecb3a',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  50.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:35:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:35:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'f6709cb9-1e02-43b0-bf5c-6feb04bb9e4e',
  '9a7c0b23-a1e0-4554-83fe-82f257cc7390',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  20.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:36:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:36:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'cf915cc8-ba38-4ce0-9bb6-fdc5875e65ce',
  'e94a9682-6475-41f6-abf3-edfe78163f91',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  32.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:37:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:37:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '6a1e53f1-df5d-4820-903d-eae23ee74ab1',
  '7d7a13cf-6d86-4634-a0da-489a4bac22c0',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  18.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:38:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:38:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '49c18ed3-c5bc-4e78-8e88-307928b7be3a',
  'bcd33e22-a335-49b1-9022-281f1d95926f',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:39:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:39:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '6f905176-3a24-4949-8ca4-318d5ec9916f',
  '29439432-00ad-40a1-9c9c-42f55b81ee12',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:40:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:40:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'dd4fc895-00a3-4c48-ac00-0d12d687ae01',
  '3a0eec19-8a0e-4e01-9a33-a19ceb9d7e40',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  41.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:41:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:41:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '9c612819-9c6f-4c50-baea-546919b90d60',
  'bfd2559d-9c81-42f2-add1-e674b8efaaa0',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  43.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:42:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:42:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '04a91efc-cc58-4ecc-9259-c0e2926c5fcf',
  '042d414a-2212-4c0f-8a1e-a9475e2f0762',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  113.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:43:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:43:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '23d0e616-10ea-43aa-89be-4e7d96cf07d7',
  '042d414a-2212-4c0f-8a1e-a9475e2f0762',
  date '2026-06-10',
  'diurno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('MR BOB'),
  800.0,
  '{"origen_texto": "TALARA", "n_vale": "5759"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:44:00-05'::timestamptz,
  '5759',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:44:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '95717e22-d843-4dda-9075-cf5e34c49397',
  'ddf55421-7595-4736-8e2d-92801e6b3ef7',
  date '2026-06-10',
  'diurno',
  'transferencia',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('MR BOB'),
  800.0,
  '{"destino_texto": "MR BOB", "n_vale": "5759"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:44:00-05'::timestamptz,
  '5759',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:44:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd71d9955-5bdc-4b99-993a-94a56ea988e0',
  '871c53d2-7e3a-4956-9ffc-e8f3446a4257',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  45.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:46:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:46:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '4d537f66-916e-4bb2-8451-92ba96adaf6a',
  'd86c2656-2873-4553-b70c-b0a73b8df62f',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  102.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:47:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:47:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'bed8d82a-e4df-4469-8012-b73b9bbbe1fb',
  'd86c2656-2873-4553-b70c-b0a73b8df62f',
  date '2026-06-10',
  'diurno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('LJ KELLEY'),
  150.0,
  '{"origen_texto": "TALARA", "n_vale": "5760"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:48:00-05'::timestamptz,
  '5760',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:48:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '2ba2aad6-2269-4acc-9c89-47689462c9cb',
  'ddf55421-7595-4736-8e2d-92801e6b3ef7',
  date '2026-06-10',
  'diurno',
  'despacho',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('LJ KELLEY'),
  150.0,
  '{"destino_texto": "LJ KELLEY", "n_vale": "5760"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:48:00-05'::timestamptz,
  '5760',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:48:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'fe91e5a9-75f7-41d4-93ad-d83982fbcb9c',
  'f8075c7f-b7c6-4d3c-a628-ef598d479b89',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  55.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:50:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:50:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '01fb5a65-263a-423b-8d61-284fa89b7437',
  'fb3104b0-7390-48be-8b62-04f9ac361c97',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('R'),
  public.resolve_unidad_id('R'),
  3.0,
  '{"origen_texto": "R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:51:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:51:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '356826da-bd4c-41ce-bb98-3ba78c381d74',
  'fb3104b0-7390-48be-8b62-04f9ac361c97',
  date '2026-06-10',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('R'),
  3.0,
  '{"origen_texto": "ORO", "n_vale": "81458"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:52:00-05'::timestamptz,
  '81458',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:52:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e7b90a96-7d69-478f-b397-6d86d03dfe9e',
  '29439432-00ad-40a1-9c9c-42f55b81ee12',
  date '2026-06-10',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('R'),
  3.0,
  '{"destino_texto": "R", "n_vale": "81458"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:52:00-05'::timestamptz,
  '81458',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:52:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0e3a8f67-646b-4a5b-bc6c-50185a51fcc6',
  '56cb08fe-3a88-4c60-be22-141875f9b6a9',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  157.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 09:54:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 09:54:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '2fca308d-3192-4b05-b125-415f587ae450',
  'bde87c71-68ab-4314-b75e-7656405ad152',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  27.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:55:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:55:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '735eb4e6-0399-4004-aab4-5a81db5e628d',
  'bde87c71-68ab-4314-b75e-7656405ad152',
  date '2026-06-11',
  'nocturno',
  'recibido',
  NULL,
  public.resolve_unidad_id('PARIÑAS'),
  5960.0,
  '{"origen_texto": "AMARRADERO #4 PP", "n_vale": "6104"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:56:00-05'::timestamptz,
  '6104',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:56:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '8959aa1f-2d76-4b11-979b-5bedc0dfdee5',
  '16dfbe1f-e382-4da9-8145-63f9342cd46e',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  142.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 09:57:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 09:57:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '2ab14109-fe11-4c69-b879-d965e86aad74',
  '8e390afa-2721-4682-96db-2ef7a06ee0d5',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  44.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:58:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:58:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1b8f01f0-2a41-4957-8803-2473179d0f6b',
  '8e390afa-2721-4682-96db-2ef7a06ee0d5',
  date '2026-06-11',
  'nocturno',
  'recibido',
  NULL,
  public.resolve_unidad_id('TALARA'),
  10514.0,
  '{"origen_texto": "AMARRADERO #4 PP", "n_vale": "5761"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:59:00-05'::timestamptz,
  '5761',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:59:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'ba1af8cc-9996-4928-95c8-dd2d1fb90a59',
  '6466bd14-8146-40b3-85d0-8eaf944e9409',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  125.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:00:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:00:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'efe0ac88-083f-4e6e-8df5-16b237deba93',
  '0c5985c8-4e70-4252-94e1-04fa9c5d45c0',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  104.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:01:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:01:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '24f11d99-bebd-43ff-87dd-addfe35f566b',
  '0c5985c8-4e70-4252-94e1-04fa9c5d45c0',
  date '2026-06-11',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  250.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "6105"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:02:00-05'::timestamptz,
  '6105',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:02:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b73e825a-9e2b-4e2e-b498-f6a3d6a21bda',
  'bde87c71-68ab-4314-b75e-7656405ad152',
  date '2026-06-11',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  250.0,
  '{"destino_texto": "OLYMPIC EXPRESS", "n_vale": "6105"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:02:00-05'::timestamptz,
  '6105',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:02:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '592b9762-f080-4861-a1b0-f2bcf4efe855',
  '562d51a2-74ca-4673-94bb-298b8411d71c',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('DONALD ROBIN'),
  public.resolve_unidad_id('DONALD ROBIN'),
  82.0,
  '{"origen_texto": "DONALD ROBIN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:04:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:04:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3910c4ab-c57a-40bf-b2dd-3db59cd8bb08',
  '562d51a2-74ca-4673-94bb-298b8411d71c',
  date '2026-06-11',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('DONALD ROBIN'),
  150.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "5793"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:05:00-05'::timestamptz,
  '5793',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:05:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '05b12fe6-49b2-44a5-9242-9c503beb3b2b',
  '56cb08fe-3a88-4c60-be22-141875f9b6a9',
  date '2026-06-11',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('DONALD ROBIN'),
  150.0,
  '{"destino_texto": "DONALD ROBIN", "n_vale": "5793"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:05:00-05'::timestamptz,
  '5793',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:05:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c5c968b4-0560-49e6-8962-c84ef2215608',
  '5d37d5bd-e859-4309-a138-3ae3b9392cff',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  46.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:07:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:07:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '2c08297c-4a8f-4904-9df5-f2c4772e8934',
  'fa40a5a1-2b6d-48e0-9eef-6552101b21d1',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  47.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:08:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:08:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '21c042b6-2c37-4a15-8f87-0b03a5d0ade6',
  '4da912a7-8fc4-4bbc-b3a9-8a475ba49298',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  43.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:09:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:09:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '920cf218-3cb6-4399-b456-f8cfb7373c94',
  '4da912a7-8fc4-4bbc-b3a9-8a475ba49298',
  date '2026-06-11',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('IRIS'),
  100.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "6102"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:10:00-05'::timestamptz,
  '6102',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:10:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'a3f40fcb-7014-4455-ae97-f2f1736b356c',
  '56cb08fe-3a88-4c60-be22-141875f9b6a9',
  date '2026-06-11',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('IRIS'),
  100.0,
  '{"destino_texto": "IRIS", "n_vale": "6102"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:10:00-05'::timestamptz,
  '6102',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:10:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd1a9feaf-db05-4bbd-b431-bf31673217bb',
  '10262722-26d3-481b-af1d-80e11e102bed',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  47.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:12:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:12:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3916be6c-5e21-4338-890c-3867907403f5',
  '1caa58ad-d515-4d8f-b0de-3bce9b4c04cc',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROSLYN'),
  public.resolve_unidad_id('ROSLYN'),
  55.0,
  '{"origen_texto": "ROSLYN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:13:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:13:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '8602c53b-3a76-434b-bc2b-4781cf709082',
  '1caa58ad-d515-4d8f-b0de-3bce9b4c04cc',
  date '2026-06-11',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('ROSLYN'),
  150.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "6103"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:14:00-05'::timestamptz,
  '6103',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:14:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '6bb91089-e244-4f75-8348-70fca2ae433d',
  '56cb08fe-3a88-4c60-be22-141875f9b6a9',
  date '2026-06-11',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('ROSLYN'),
  150.0,
  '{"destino_texto": "ROSLYN", "n_vale": "6103"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:14:00-05'::timestamptz,
  '6103',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:14:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b1281052-3bdb-461b-8301-e8399a61b698',
  'ef14e112-8c0c-466e-8cf8-6346ae3a7255',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  82.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:16:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:16:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c1c36f48-875d-4a12-8932-43535f5dcc9f',
  'ef14e112-8c0c-466e-8cf8-6346ae3a7255',
  date '2026-06-11',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('CHIP II'),
  250.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "5792"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:17:00-05'::timestamptz,
  '5792',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:17:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '73179af4-d374-4bae-9eda-15256d433244',
  '56cb08fe-3a88-4c60-be22-141875f9b6a9',
  date '2026-06-11',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('CHIP II'),
  250.0,
  '{"destino_texto": "CHIP II", "n_vale": "5792"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:17:00-05'::timestamptz,
  '5792',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:17:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'a273e9ab-02ea-45d3-87c9-834be5f9e38b',
  'e5c78c34-0789-413f-85fb-a493a37328ed',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  52.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:19:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:19:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e07a2322-1cd3-478c-aa6b-c55bc8224db8',
  '8c649307-71cc-41a0-812c-3ed255fa6664',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  23.0,
  '{"origen_texto": "BUCKLEY EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:20:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:20:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'dd0f6a00-95e8-4de0-bbc9-84a2ff825568',
  'e8d94d9b-072f-4eb9-803e-15d6eab5fa51',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  50.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:21:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:21:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'f82c25e8-d735-438a-a29a-d8159f0ad8ee',
  '9e26f236-7103-454c-93cd-78b6cf217de1',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  10.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:22:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:22:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'f1dfb65a-0968-4567-8be6-8a976c8c8adb',
  '9e26f236-7103-454c-93cd-78b6cf217de1',
  date '2026-06-11',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('CABO BLANCO'),
  200.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "6056"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:23:00-05'::timestamptz,
  '6056',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:23:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3a8cf5c4-4ef1-409e-be30-ed695c2c0750',
  'ba068503-a75f-4aff-8d8e-f9e25ba8378e',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  32.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:24:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:24:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'a5969f7b-7c1c-4c52-bc78-eeee9ac0dfbd',
  'be505a49-1941-4e20-bd6e-333a7e93377d',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  18.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:25:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:25:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '7810ff45-e472-49e7-8de1-e7a9ae1ad041',
  'daa43d92-20a8-44dc-bc1c-032b580c18a4',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:26:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:26:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '59288e6f-708e-4b9a-a414-9b21829248f8',
  'b167c160-97cb-4c47-8f7d-ef3506b19eaa',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:27:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:27:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '410a4356-a0b0-4b6e-a29d-027f301f5189',
  '86ebb397-dba0-4c84-8288-926c11f57495',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  39.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:28:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:28:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '58726dff-0b1e-4452-95dd-619d91ad8858',
  '86ebb397-dba0-4c84-8288-926c11f57495',
  date '2026-06-11',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('ROGUE'),
  500.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "6101"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:29:00-05'::timestamptz,
  '6101',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:29:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'daac1b87-565e-44d3-9375-d0128ba92024',
  '56cb08fe-3a88-4c60-be22-141875f9b6a9',
  date '2026-06-11',
  'diurno',
  'transferencia',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('ROGUE'),
  500.0,
  '{"destino_texto": "ROGUE", "n_vale": "6101"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:29:00-05'::timestamptz,
  '6101',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:29:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'a7cfbfb8-34cd-46cf-ac0e-58724c56ab43',
  '59dc7d77-ef2a-4fd5-a535-67bf25ef994e',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  53.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:31:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:31:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e5fc6578-8547-4d6b-8fb6-ea19edb92ae3',
  '11303a34-9be4-4b96-b53a-1baf85682665',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  134.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:32:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:32:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '7e296551-618a-488a-8542-4560c3d00670',
  '969db2ed-214c-425e-ac84-9eb4bef04440',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  45.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:33:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:33:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3cb5049b-6b01-49ad-a9e5-9d01a2390768',
  'aa17b746-dddc-4662-a8fb-84e6efa9eb4c',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  95.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:34:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:34:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'f036fa32-c632-43d1-aabb-d431779c3240',
  'aa17b746-dddc-4662-a8fb-84e6efa9eb4c',
  date '2026-06-11',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LJ KELLEY'),
  150.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "6055"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:35:00-05'::timestamptz,
  '6055',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:35:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '4ae35c8c-159c-499e-85da-ddbb1599f10f',
  '625445e5-b00a-49e0-8740-16fb5cce901f',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  55.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:36:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:36:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'f796d065-62a7-41df-a509-5ac66124d7cd',
  'a77badb8-4a57-483d-bf54-a4c3d9d3907d',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  195.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:37:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:37:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0cf2d905-65be-4fae-a891-f140d94835fd',
  '41e679ce-fe15-4022-ab76-c2aa8695dd0a',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  55.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:38:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:38:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0ade2aaf-fb6c-48f9-afa2-d14a22cfa0e5',
  '41e679ce-fe15-4022-ab76-c2aa8695dd0a',
  date '2026-06-12',
  'nocturno',
  'recibido',
  NULL,
  public.resolve_unidad_id('PARIÑAS'),
  6214.0,
  '{"origen_texto": "AMARRADERO #4 PP", "n_vale": "6107"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:39:00-05'::timestamptz,
  '6107',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:39:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1553d454-076e-40bb-b9bf-07c27d27fa60',
  '53702497-d229-4c68-8109-74dfbcc40a5a',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  114.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:40:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:40:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '6318bc12-839b-4cae-bec1-2c8c9c6901b5',
  '7ab0c891-1054-471f-a01e-6b5a72ac6f2b',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  26.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:41:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:41:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '57554d93-7ffa-41d3-a534-53af10945172',
  '7ab0c891-1054-471f-a01e-6b5a72ac6f2b',
  date '2026-06-12',
  'nocturno',
  'recibido',
  NULL,
  public.resolve_unidad_id('TALARA'),
  3330.0,
  '{"origen_texto": "AMARRADERO #4 PP", "n_vale": "5766"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:42:00-05'::timestamptz,
  '5766',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:42:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '201de2de-b805-4af6-86f6-7249017efe22',
  'c7abe445-125f-480f-bbff-00353477347a',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  183.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:43:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:43:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0e2fd62e-68bc-4e7b-a35b-3e133d33aeb3',
  '6686e8a2-9993-451e-8353-ef8507d022ea',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  17.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:44:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:44:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '82fbb6ea-9fc8-4f22-89e8-2c88db0a98e3',
  '6686e8a2-9993-451e-8353-ef8507d022ea',
  date '2026-06-12',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  200.0,
  '{"origen_texto": "TALARA", "n_vale": "5765"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:45:00-05'::timestamptz,
  '5765',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:45:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '57564a74-a3ea-4295-a1e1-2f2855e4e68e',
  '7ab0c891-1054-471f-a01e-6b5a72ac6f2b',
  date '2026-06-12',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  200.0,
  '{"destino_texto": "OLYMPIC EXPRESS", "n_vale": "5765"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:45:00-05'::timestamptz,
  '5765',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:45:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '6c72606a-6653-4499-9c51-366fc8ad5898',
  '79a45915-7bf3-4535-84f8-5d7ec8e52d37',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('DONALD ROBIN'),
  public.resolve_unidad_id('DONALD ROBIN'),
  93.0,
  '{"origen_texto": "DONALD ROBIN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:47:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:47:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'cb28234e-eec1-4b97-8a11-a04c75c04d82',
  '71ece3fc-1991-4b53-a9ef-a02fa13d1551',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  67.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:48:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:48:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'dbe82505-b4a4-4480-8deb-c7ff4c1f6c5f',
  '71ece3fc-1991-4b53-a9ef-a02fa13d1551',
  date '2026-06-12',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('SHEILA R'),
  200.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "6057"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:49:00-05'::timestamptz,
  '6057',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:49:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '29f11cbd-f832-46ec-929d-05171ac9032f',
  'dd6bee65-fe30-45a2-8ec1-c510da774825',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  51.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:50:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:50:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '9bcaeb75-f068-4e6a-a18c-1bda53d27468',
  '266aedee-713c-49ac-bf5a-49d69cacd4bd',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  51.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:51:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:51:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '74636c6c-aec3-43d8-8f1f-0c83d6f976c1',
  '5ea892cb-28a1-4045-82d3-a5ba5260ce84',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  63.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:52:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:52:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '8325ef50-dea1-4c51-997c-b4ed3e41323e',
  'a7e8e6db-1892-4b73-9dc5-a50567cf281a',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROSLYN'),
  public.resolve_unidad_id('ROSLYN'),
  95.0,
  '{"origen_texto": "ROSLYN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:53:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:53:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '32338124-a2d3-46fd-b7ea-573057ab7b13',
  '04898140-05e8-4ea6-8077-52010cfa217c',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  70.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:54:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:54:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c196903a-3789-4351-98ff-dbf428b17aaf',
  'ee160a8f-e9b1-43fa-b6cc-a8d0a678c02a',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  74.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:55:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:55:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'bdbf5f3e-5cbe-492c-b3d9-d0a3c042fb75',
  'eebe4349-b490-461b-913d-238eea4aa484',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  72.0,
  '{"origen_texto": "BUCKLEY EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:56:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:56:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e0152c90-4a05-42cb-84c8-e97357e682e2',
  '1d0c974b-2760-4fb6-adf7-eba552792a7d',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  60.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:57:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:57:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '486ac5c5-e7c1-4030-83ce-186b10f3e7ad',
  '1eabcdf1-b961-41f1-98c3-1e3a2daa5638',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  5.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:58:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:58:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '76736015-ed82-47af-8998-b5d992192230',
  '9d2e408f-d017-4cac-afb3-408a6731c2e7',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  32.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:59:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:59:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '576df1bd-f174-4a79-89c4-9cd5ed438d7a',
  '69ba1530-ae7f-4054-9854-344b4e502cb1',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  18.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:00:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:00:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '83b04c91-0121-43bd-993f-46d63d474d06',
  'd4abc1df-523b-43e1-a6fd-8cb4b4490c44',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 11:01:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 11:01:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'faef9b99-1d4a-469b-95d2-d6ca325eb83a',
  '0d3ac4d3-e72c-49ac-ae28-e4c237dff095',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:02:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:02:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '18adf1e1-82df-41cd-9337-ee4564611f52',
  'ec5be930-4176-415d-8f64-9d3e4019de4b',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  43.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 11:03:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 11:03:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '74f2b263-a7cb-4b10-8271-b2ae747efddd',
  '2abd5134-edff-43c6-8efc-98e4c7ea38f1',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  43.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:04:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:04:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0d29e605-e0ca-4295-8220-9b6af635f9d4',
  'ccb626da-9b54-4f82-a9ef-a5a42b8ffaa1',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  149.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 11:05:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 11:05:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'fcf39153-8ee9-49f5-b4ee-1fcbde9cb5e8',
  'c14ffbe0-9205-429c-b647-7c6ca4fe3792',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  45.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:06:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:06:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'a126d253-3dc4-4533-ae8d-339e1f7fe784',
  '1e4df03b-9064-4671-ac45-035990e334f7',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  105.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 11:07:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 11:07:00-05'::timestamptz
);
