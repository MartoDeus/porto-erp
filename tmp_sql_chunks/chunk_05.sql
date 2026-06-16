insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '4735f1f9-59d3-4a0c-985e-f9e7e63dd50d',
  '1e4df03b-9064-4671-ac45-035990e334f7',
  date '2026-06-12',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LJ KELLEY'),
  200.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "6059"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 11:08:00-05'::timestamptz,
  '6059',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 11:08:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '4e80d6a2-996c-4172-9bb6-6846a48c04c9',
  '32a9cdda-1b80-41b1-81fb-5081e401c124',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  72.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:09:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:09:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '87073d91-1763-4dbf-9955-a1ef7cd3e989',
  'cda697c5-9f09-48cc-8794-d3104640efa6',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('PN1'),
  public.resolve_unidad_id('PN1'),
  3.0,
  '{"origen_texto": "PN1", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:10:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:10:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1d57c0ae-cb6d-444e-a78b-68c36f0ad886',
  'cda697c5-9f09-48cc-8794-d3104640efa6',
  date '2026-06-12',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('PN1'),
  3.0,
  '{"origen_texto": "ORO", "n_vale": "81459"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:11:00-05'::timestamptz,
  '81459',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:11:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'cef4cca7-04bb-4c5e-af47-e940ef033632',
  '0d3ac4d3-e72c-49ac-ae28-e4c237dff095',
  date '2026-06-12',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('PN1'),
  3.0,
  '{"destino_texto": "PN1", "n_vale": "81459"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:11:00-05'::timestamptz,
  '81459',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:11:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'a9a89126-0baf-4800-8bc5-880ae6bb414e',
  '6df36f4d-2de1-4853-971d-52b91bf83a4a',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('PN8'),
  public.resolve_unidad_id('PN8'),
  3.0,
  '{"origen_texto": "PN8", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:13:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:13:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '9864210e-d38c-4598-9257-d6f8692a4f5e',
  '6df36f4d-2de1-4853-971d-52b91bf83a4a',
  date '2026-06-12',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('PN8'),
  3.0,
  '{"origen_texto": "ORO", "n_vale": "81459"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:14:00-05'::timestamptz,
  '81459',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:14:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c3fcd857-4c2d-4393-a07d-07cebbd4a4b9',
  '0d3ac4d3-e72c-49ac-ae28-e4c237dff095',
  date '2026-06-12',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('PN8'),
  3.0,
  '{"destino_texto": "PN8", "n_vale": "81459"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:14:00-05'::timestamptz,
  '81459',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:14:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c2ee2e90-2824-484a-a2aa-8b284d4589a5',
  '63075326-a287-4d3a-ba87-f28f2676b12d',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  16.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:16:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:16:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd518956a-de42-42f9-b9e6-70e987f97c0f',
  '3bfb7432-b87e-4eee-a0f4-5a263dfd3296',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  16.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:17:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:17:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'ed0fb63e-084b-4082-aec1-c76d4f6da5be',
  'bc1efa9d-03c8-40db-853c-ee8f67895f86',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  168.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:18:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:18:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e67fc00a-f01f-403e-86ec-df95ae89d2f3',
  'b6929344-97fb-40b9-b9d2-94f771bde661',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  20.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:19:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:19:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'ee7404f0-8ebe-4381-a046-ac1cbeb269f3',
  'c47696aa-66f5-474c-b21a-f95a4ce8871f',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  73.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:20:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:20:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3f737bbc-b447-45b3-89a5-543ab1ebd22a',
  'e16fafd6-2285-4314-b0b9-f87f89295248',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  12.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:21:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:21:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'eac1baf2-a907-4694-801e-09a3ab4038ac',
  '25ed696c-f3a5-4abc-899b-4717aeb01e2d',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('DONALD ROBIN'),
  public.resolve_unidad_id('DONALD ROBIN'),
  90.0,
  '{"origen_texto": "DONALD ROBIN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:22:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:22:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '775957f9-7b2e-4a56-9bfb-9ea0e93d28bd',
  '25ed696c-f3a5-4abc-899b-4717aeb01e2d',
  date '2026-06-13',
  'diurno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('DONALD ROBIN'),
  150.0,
  '{"origen_texto": "TALARA", "n_vale": "5768"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:23:00-05'::timestamptz,
  '5768',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:23:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '31062776-07d4-4e33-9061-a47380e0b81b',
  'bc1efa9d-03c8-40db-853c-ee8f67895f86',
  date '2026-06-13',
  'diurno',
  'despacho',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('DONALD ROBIN'),
  150.0,
  '{"destino_texto": "DONALD ROBIN", "n_vale": "5768"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:23:00-05'::timestamptz,
  '5768',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:23:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '83a7f4be-28cd-40ba-b74a-6a399c30f511',
  '3becbfd1-10e4-4429-8989-2cefe27b037f',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  41.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:25:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:25:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c0b56761-8197-4906-8e00-88ca8ca86889',
  '51e8ce66-dc6a-447d-ba2b-7f9d2835c3fe',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  36.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:26:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:26:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '346745dd-fc41-420b-8a5c-71f7e60d137e',
  '05e73675-8179-41c2-b1b2-4355e8464435',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  35.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:27:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:27:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '7d4924a6-6603-4e9f-9a37-78f75fd2d1d1',
  '05e73675-8179-41c2-b1b2-4355e8464435',
  date '2026-06-13',
  'diurno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('IRIS'),
  200.0,
  '{"origen_texto": "TALARA", "n_vale": "5771"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:28:00-05'::timestamptz,
  '5771',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:28:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'fd1265bf-e2fc-46de-bd49-a067d3546285',
  'bc1efa9d-03c8-40db-853c-ee8f67895f86',
  date '2026-06-13',
  'diurno',
  'despacho',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('IRIS'),
  200.0,
  '{"destino_texto": "IRIS", "n_vale": "5771"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:28:00-05'::timestamptz,
  '5771',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:28:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b7ee8903-77fa-456c-b7f4-25b46d83a566',
  'd494fadd-c60f-4590-a907-34cf5544eda6',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  51.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:30:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:30:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '02d8b9e5-c9de-463c-bbd3-65735816a66b',
  '7d0ad34b-11b2-4ed3-ab53-75b1f5a88f42',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROSLYN'),
  public.resolve_unidad_id('ROSLYN'),
  75.0,
  '{"origen_texto": "ROSLYN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:31:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:31:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd81a3e29-035b-4778-8e5b-e174e77337a4',
  '7d0ad34b-11b2-4ed3-ab53-75b1f5a88f42',
  date '2026-06-13',
  'diurno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('ROSLYN'),
  150.0,
  '{"origen_texto": "TALARA", "n_vale": "5768"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:32:00-05'::timestamptz,
  '5768',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:32:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b834c357-74a9-45fa-b622-d3e74f44b119',
  'bc1efa9d-03c8-40db-853c-ee8f67895f86',
  date '2026-06-13',
  'diurno',
  'despacho',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('ROSLYN'),
  150.0,
  '{"destino_texto": "ROSLYN", "n_vale": "5768"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:32:00-05'::timestamptz,
  '5768',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:32:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1d750c1f-45e0-4971-bfa8-698be6546748',
  '828adba9-ebe3-4d01-927e-d492b6ec026f',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  72.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:34:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:34:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '52e9d194-5adc-4025-8512-a2f334995049',
  '828adba9-ebe3-4d01-927e-d492b6ec026f',
  date '2026-06-13',
  'diurno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('CHIP II'),
  300.0,
  '{"origen_texto": "TALARA", "n_vale": "5767"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:35:00-05'::timestamptz,
  '5767',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:35:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b52adcd9-b271-441a-b438-e3d1b153cac0',
  'bc1efa9d-03c8-40db-853c-ee8f67895f86',
  date '2026-06-13',
  'diurno',
  'despacho',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('CHIP II'),
  300.0,
  '{"destino_texto": "CHIP II", "n_vale": "5767"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:35:00-05'::timestamptz,
  '5767',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:35:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e7bd764c-010b-407f-9c55-562f970ec666',
  '7fc446ef-ec34-455f-b81b-d1ad782369b1',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  93.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:37:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:37:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '9f3fe2c5-6413-4cbf-ac98-fb8b95fa3ee7',
  'e837a988-4c9d-4aa3-9da5-502c7e06c183',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  28.0,
  '{"origen_texto": "BUCKLEY EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:38:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:38:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '090b2f9b-9abc-41f9-bfed-9fae85238377',
  'f2ee1061-bb7c-4c13-ac02-1c50b08256dd',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  100.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:39:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:39:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1dcffd20-7679-4de2-9f3d-992145a499fa',
  '5efdad33-ea2a-4ed1-9255-af756716a4e3',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  5.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:40:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:40:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '47734e9d-a709-471b-a952-570f2d68baae',
  '5efdad33-ea2a-4ed1-9255-af756716a4e3',
  date '2026-06-13',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('CABO BLANCO'),
  200.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "6109"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:41:00-05'::timestamptz,
  '6109',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:41:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '379bdb02-3c7e-42c6-b6c6-56f485864ca9',
  '3bfb7432-b87e-4eee-a0f4-5a263dfd3296',
  date '2026-06-13',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('CABO BLANCO'),
  200.0,
  '{"destino_texto": "CABO BLANCO", "n_vale": "6109"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:41:00-05'::timestamptz,
  '6109',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:41:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '712e6dc1-6ea1-44da-b19b-8e815edec183',
  '15eed2f1-7e51-44bd-ac0b-feb058294baf',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  18.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:43:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:43:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c2ac6f1e-ae4d-4d92-8570-7aede0ca6b23',
  'fc0e1644-347f-44c4-a12a-5779bb0c6fed',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:44:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:44:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0908d516-2c61-43dc-a26e-b7790b1bccd2',
  '20b29b45-1b77-4b6b-b8da-0748f16e47b5',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:45:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:45:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b93ad6a2-7afd-4af3-97b9-77a581cfdb53',
  'd8da8ecd-d608-4cb9-9a9b-488b88f6dcd8',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  39.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:46:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:46:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b891f73b-685f-4beb-85de-8f249db8f749',
  '64bd79b7-e00c-4f88-b39a-adadf7201bbd',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  43.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:47:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:47:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'f8c1f807-1959-45ba-a31d-0af8bef5e118',
  'b56ff365-3572-47d8-be4a-49bed9310f90',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  155.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:48:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:48:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '43abe118-1345-45ff-9d4f-5678508a2a9e',
  '1a6a0ab5-8635-42da-82e9-e2ea1a273272',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  85.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:49:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:49:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '04f02f85-53b2-4f72-bcc1-aea95bd2bf67',
  '48a1da8c-4f8e-46a6-b0fb-7ab7d6387c44',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  83.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:50:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:50:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '820221fd-86eb-4312-aca8-5224575a3e7e',
  '48a1da8c-4f8e-46a6-b0fb-7ab7d6387c44',
  date '2026-06-13',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('LJ KELLEY'),
  200.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "6108"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:51:00-05'::timestamptz,
  '6108',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:51:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'a907cb08-f3e7-41be-95d1-f64716042e0b',
  '63075326-a287-4d3a-ba87-f28f2676b12d',
  date '2026-06-13',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('LJ KELLEY'),
  200.0,
  '{"destino_texto": "LJ KELLEY", "n_vale": "6108"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:51:00-05'::timestamptz,
  '6108',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:51:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '4f1ddc19-895a-466b-aed2-5c99ce0a8892',
  'd5b49b74-2600-45bc-b0ab-8a95a3eb2fdf',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  74.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:53:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:53:00-05'::timestamptz
);

select public.recalcular_diesel_historial(public.resolve_unidad_id('BUCKLEY EXPRESS'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('CABO BLANCO'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('CHIP II'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('DONALD ROBIN'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ELIZABETH'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('IRIS'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('KK'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('LJ KELLEY'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('MR BOB'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('OLYMPIC EXPRESS'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ORO'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('PARIÑAS'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('PN1'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('PN8'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('R'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ROGUE'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ROSLYN'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('SHEILA R'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('TALARA'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('VILMA'), date '2026-06-08', 'diurno');
commit;
