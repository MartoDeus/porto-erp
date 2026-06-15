begin;
delete from public.diesel_movimientos
where kardex_id in (
  select id from public.diesel_kardex
  where fecha >= date '2026-06-08'
    and unidad_id in (public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'))
);

delete from public.diesel_movimientos
where fecha >= date '2026-06-08'
  and tipo in ('despacho','transferencia')
  and nave_origen_id = public.resolve_unidad_id('LOBITOS EXPRESS CARGA');

delete from public.diesel_kardex
where fecha >= date '2026-06-08'
  and unidad_id in (public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'));

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '09ebc58e-d0be-4d0d-86ea-50fac4369944',
  date '2026-06-08',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  12150.0,
  11750.0,
  0,
  0,
  400.0,
  0.0,
  0,
  0,
  '{"despacho": true, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  'JUAN GONZALES ALVARADO',
  'ALEXANDER MORALES CASTRO',
  NULL,
  NULL,
  '5797',
  '2026-06-08 08:00:00-05'::timestamptz,
  '2026-06-08 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '4f1f02a5-a6bd-4d76-ac3b-9931769d0dfc',
  date '2026-06-08',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  11750.0,
  10450.0,
  0,
  0,
  1300.0,
  0.0,
  0,
  0,
  '{"despacho": true, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  'IVAN CASTILLO',
  'JUAN MORE',
  NULL,
  NULL,
  '5798',
  '2026-06-08 20:00:00-05'::timestamptz,
  '2026-06-08 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'fe1e34e1-4966-46fe-a1db-1802cc16c47f',
  date '2026-06-08',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2700.0,
  2652.0,
  0,
  0.0,
  0.0,
  48.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  '-',
  '-',
  NULL,
  NULL,
  NULL,
  '2026-06-08 08:00:00-05'::timestamptz,
  '2026-06-08 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '49e82cea-c785-4488-bf5a-46f4938c3b50',
  date '2026-06-08',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2652.0,
  2604.0,
  0,
  0.0,
  0.0,
  48.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  '-',
  '-',
  NULL,
  NULL,
  NULL,
  '2026-06-08 20:00:00-05'::timestamptz,
  '2026-06-08 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'e3114a02-318b-4fb6-a637-edd9a06aa548',
  date '2026-06-09',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  10450.0,
  10450.0,
  0,
  0,
  0,
  0.0,
  0,
  0,
  '{"despacho": false, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  'JUAN GONZALES ALVARADO',
  'ALEXANDER MORALES CASTRO',
  NULL,
  NULL,
  NULL,
  '2026-06-09 08:00:00-05'::timestamptz,
  '2026-06-09 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '26577df5-dd56-41f0-89fd-2f25349ee8e9',
  date '2026-06-09',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  10450.0,
  8500.0,
  0,
  450.0,
  1500.0,
  0.0,
  0,
  0,
  '{"despacho": true, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  'IVAN CASTILLO',
  'JUAN MORE',
  NULL,
  NULL,
  '5800 / 5794 / 5799',
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'f956095e-9de8-4d1d-bd9b-b7b433f2d22c',
  date '2026-06-09',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2604.0,
  2556.0,
  0,
  0.0,
  0.0,
  48.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  '-',
  '-',
  NULL,
  NULL,
  NULL,
  '2026-06-09 08:00:00-05'::timestamptz,
  '2026-06-09 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'e83fd446-6296-470a-ba14-eacf4fd4e454',
  date '2026-06-09',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2556.0,
  2508.0,
  0,
  0.0,
  0.0,
  48.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  '-',
  '-',
  NULL,
  NULL,
  NULL,
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'ce9ac1ce-507f-436e-a59f-6d7240200957',
  date '2026-06-10',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  8500.0,
  8000.0,
  0,
  500.0,
  0,
  0.0,
  0,
  0,
  '{"despacho": true, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  'ANDRES YENQUE',
  'JUAN MORE ZAPATA',
  NULL,
  NULL,
  '5795 / 6052',
  '2026-06-10 08:00:00-05'::timestamptz,
  '2026-06-10 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '929df47c-444b-4f67-81d8-afd296dff007',
  date '2026-06-10',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  8000.0,
  6500.0,
  0,
  200.0,
  1300.0,
  0.0,
  0,
  0,
  '{"despacho": true, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  'JUAN GONZALES ALVARADO',
  'ALEXANDER MORALES CASTRO',
  NULL,
  NULL,
  '6054 / 6053',
  '2026-06-10 20:00:00-05'::timestamptz,
  '2026-06-10 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'a252fb02-3382-4b4c-ac23-5121bef38a01',
  date '2026-06-10',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2508.0,
  2660.0,
  0,
  0.0,
  0.0,
  48.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  200.0,
  'LOBITOS EXPRESS CARGA',
  '-',
  '-',
  NULL,
  NULL,
  NULL,
  '2026-06-10 08:00:00-05'::timestamptz,
  '2026-06-10 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '8be3693c-44d9-4861-8137-3f48ac09878e',
  date '2026-06-10',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2660.0,
  2612.0,
  0,
  0.0,
  0.0,
  48.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  '-',
  '-',
  NULL,
  NULL,
  NULL,
  '2026-06-10 20:00:00-05'::timestamptz,
  '2026-06-10 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '9c66d567-bc91-4dae-a6d5-3051138d2057',
  date '2026-06-11',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  6500.0,
  17600.0,
  0,
  150.0,
  0,
  0.0,
  0,
  0,
  '{"despacho": true, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  11250.0,
  'TALARA + PARIÑAS',
  'ANDRES YENQUE',
  'JUAN MORE ZAPATA',
  NULL,
  NULL,
  '6055',
  '2026-06-11 08:00:00-05'::timestamptz,
  '2026-06-11 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '070fc51b-e285-44db-b449-2fa62d1f9fe5',
  date '2026-06-11',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  17600.0,
  17400.0,
  0,
  200.0,
  0,
  0.0,
  0,
  0,
  '{"despacho": true, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  'JUAN GONZALES ALVARADO',
  'ALEXANDER MORALES CASTRO',
  NULL,
  NULL,
  '6056',
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '0aa1ff13-dd91-4ea7-b2db-203b16006053',
  date '2026-06-11',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2612.0,
  2564.0,
  0,
  0.0,
  0.0,
  48.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  '-',
  '-',
  NULL,
  NULL,
  NULL,
  '2026-06-11 08:00:00-05'::timestamptz,
  '2026-06-11 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '353ff7bc-fbb8-492a-bff8-10dc66179ea8',
  date '2026-06-11',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2564.0,
  2516.0,
  0,
  0.0,
  0.0,
  48.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  '-',
  '-',
  NULL,
  NULL,
  NULL,
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'fdf416a4-f37b-40dc-a5dd-f959d591569c',
  date '2026-06-12',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  17400.0,
  19800.0,
  0,
  600.0,
  0,
  0.0,
  0,
  0,
  '{"despacho": true, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  3000.0,
  'TALARA',
  'ANDRES YENQUE',
  'JUAN MORE ZAPATA',
  NULL,
  NULL,
  '6057 / 6059',
  '2026-06-12 08:00:00-05'::timestamptz,
  '2026-06-12 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'bcaed09b-a390-4b13-a756-1af80c6cb585',
  date '2026-06-12',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  19800.0,
  19800.0,
  0,
  0,
  0,
  0.0,
  0,
  0,
  '{"despacho": false, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  'JUAN GONZALES ALVARADO',
  'ALEXANDER MORALES CASTRO',
  NULL,
  NULL,
  NULL,
  '2026-06-12 20:00:00-05'::timestamptz,
  '2026-06-12 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '9eb87778-2af7-4114-a7f2-3c748c87ee91',
  date '2026-06-12',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2516.0,
  2668.0,
  0,
  0.0,
  0.0,
  48.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  200.0,
  'LOBITOS EXPRESS CARGA',
  '-',
  '-',
  NULL,
  NULL,
  NULL,
  '2026-06-12 08:00:00-05'::timestamptz,
  '2026-06-12 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'ec7f5faa-3761-43be-a64c-70c24f149b59',
  date '2026-06-12',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2668.0,
  2586.0,
  0,
  0.0,
  0.0,
  82.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  '-',
  '-',
  NULL,
  NULL,
  NULL,
  '2026-06-12 20:00:00-05'::timestamptz,
  '2026-06-12 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'd30c32d7-3916-4010-b8c9-d5489c2a7f73',
  date '2026-06-13',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  19800.0,
  19300.0,
  0,
  500.0,
  0,
  0.0,
  0,
  0,
  '{"despacho": true, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  'ANDRES YENQUE',
  'JUAN MORE ZAPATA',
  NULL,
  NULL,
  NULL,
  '2026-06-13 08:00:00-05'::timestamptz,
  '2026-06-13 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '06d6e014-c17a-4077-b9cf-56fc44658820',
  date '2026-06-13',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  19300.0,
  19300.0,
  0,
  0,
  0,
  0.0,
  0,
  0,
  '{"despacho": false, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  'JUAN GONZALES ALVARADO',
  'ALEXANDER MORALES CASTRO',
  NULL,
  NULL,
  NULL,
  '2026-06-13 20:00:00-05'::timestamptz,
  '2026-06-13 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '7541e1b3-c123-4e0c-83f1-d0b8e292f653',
  date '2026-06-13',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2586.0,
  2800.0,
  0,
  0.0,
  0.0,
  286.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  500.0,
  'LOBITOS EXPRESS CARGA',
  '-',
  '-',
  NULL,
  NULL,
  NULL,
  '2026-06-13 08:00:00-05'::timestamptz,
  '2026-06-13 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'db19def0-91a0-4d50-84b5-6008deb0aa0d',
  date '2026-06-13',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2800.0,
  2648.0,
  0,
  0.0,
  0.0,
  152.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"origen": "lobitos_import_20260614"}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0.0,
  NULL,
  '-',
  '-',
  NULL,
  NULL,
  NULL,
  '2026-06-13 20:00:00-05'::timestamptz,
  '2026-06-13 20:00:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '633ee1f0-c156-4399-a08c-c3a881d9f976',
  '09ebc58e-d0be-4d0d-86ea-50fac4369944',
  date '2026-06-08',
  'diurno',
  'transferencia',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('PARIÑAS'),
  400.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "PARIÑAS", "n_vale": "5797", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:00:00-05'::timestamptz,
  '5797',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:00:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '79756f10-d778-45d1-b321-d60e96dc9ecd',
  '4f1f02a5-a6bd-4d76-ac3b-9931769d0dfc',
  date '2026-06-08',
  'nocturno',
  'transferencia',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('PARIÑAS'),
  1300.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "PARIÑAS", "n_vale": "5798", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:01:00-05'::timestamptz,
  '5798',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:01:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '79dfbeef-0802-4baa-9651-05693fc631cc',
  '26577df5-dd56-41f0-89fd-2f25349ee8e9',
  date '2026-06-09',
  'nocturno',
  'transferencia',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('TALARA'),
  1500.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "TALARA", "n_vale": "5800", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:02:00-05'::timestamptz,
  '5800',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:02:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3c6c809a-20e6-4634-ab0f-a678f6c967e5',
  '26577df5-dd56-41f0-89fd-2f25349ee8e9',
  date '2026-06-09',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  250.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "OLYMPIC EXPRESS", "n_vale": "5794", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:03:00-05'::timestamptz,
  '5794',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:03:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '2308d3a7-93f1-4e8e-acba-90df82e8fb9f',
  '26577df5-dd56-41f0-89fd-2f25349ee8e9',
  date '2026-06-09',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('CABO BLANCO'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "CABO BLANCO", "n_vale": "5799", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:04:00-05'::timestamptz,
  '5799',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:04:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '9975ad05-1615-492a-8237-cdebb0764f11',
  'ce9ac1ce-507f-436e-a59f-6d7240200957',
  date '2026-06-10',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('SHEILA R'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "SHEILA R", "n_vale": "5795", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:05:00-05'::timestamptz,
  '5795',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:05:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '38f6c3d5-dce6-4fcc-8693-040e5459407f',
  'ce9ac1ce-507f-436e-a59f-6d7240200957',
  date '2026-06-10',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  100.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "BUCKLEY EXPRESS", "n_vale": "6052", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:06:00-05'::timestamptz,
  '6052',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:06:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b49b2a48-fbd6-4552-8a80-1d483a761ebc',
  'ce9ac1ce-507f-436e-a59f-6d7240200957',
  date '2026-06-10',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "LOBITOS EXPRESS CONSUMO", "n_vale": "", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:07:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:07:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '425f3c0f-ab99-49a8-a115-847b08ce1c00',
  '929df47c-444b-4f67-81d8-afd296dff007',
  date '2026-06-10',
  'nocturno',
  'transferencia',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('PARIÑAS'),
  1300.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "PARIÑAS", "n_vale": "6054", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 20:08:00-05'::timestamptz,
  '6054',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 20:08:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd25663d3-7337-43ef-b518-08b60921e5a6',
  '929df47c-444b-4f67-81d8-afd296dff007',
  date '2026-06-10',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "OLYMPIC EXPRESS", "n_vale": "6053", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 20:09:00-05'::timestamptz,
  '6053',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 20:09:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b70f593a-fe7b-43a2-aa74-ae0a4b79f22c',
  'a252fb02-3382-4b4c-ac23-5121bef38a01',
  date '2026-06-10',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  200.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CARGA", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:10:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:10:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c72f29ed-401c-4240-b261-27c506a08d1d',
  '9c66d567-bc91-4dae-a6d5-3051138d2057',
  date '2026-06-11',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LJ KELLEY'),
  150.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "LJ KELLEY", "n_vale": "6055", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 08:11:00-05'::timestamptz,
  '6055',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 08:11:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '933124c9-b8ec-4f7c-a2da-0455be894771',
  '070fc51b-e285-44db-b449-2fa62d1f9fe5',
  date '2026-06-11',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('CABO BLANCO'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "CABO BLANCO", "n_vale": "6056", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 20:12:00-05'::timestamptz,
  '6056',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 20:12:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3ea66c1c-8fac-4742-83ce-a88ff81147ba',
  '9c66d567-bc91-4dae-a6d5-3051138d2057',
  date '2026-06-11',
  'diurno',
  'recibido',
  NULL,
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  11250.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "TALARA + PARIÑAS", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 08:13:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 08:13:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1900ccc0-bf12-4df5-9478-f3df4ec116c0',
  'fdf416a4-f37b-40dc-a5dd-f959d591569c',
  date '2026-06-12',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('SHEILA R'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "SHEILA R", "n_vale": "6057", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:14:00-05'::timestamptz,
  '6057',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:14:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '6d1387f2-6384-4d1f-8db4-d292fc72b6d4',
  'fdf416a4-f37b-40dc-a5dd-f959d591569c',
  date '2026-06-12',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LJ KELLEY'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "LJ KELLEY", "n_vale": "6059", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:15:00-05'::timestamptz,
  '6059',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:15:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0dad2b78-4e8b-4095-9869-548f79bb6544',
  'fdf416a4-f37b-40dc-a5dd-f959d591569c',
  date '2026-06-12',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "LOBITOS EXPRESS CONSUMO", "n_vale": "", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:16:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:16:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'fa97a734-2d93-41e8-ba6b-0000f2b685cf',
  'fdf416a4-f37b-40dc-a5dd-f959d591569c',
  date '2026-06-12',
  'diurno',
  'recibido',
  NULL,
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  3000.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "TALARA", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:17:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:17:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '49db3cd8-7f94-46a9-8da7-4fe56f4beca1',
  '9eb87778-2af7-4114-a7f2-3c748c87ee91',
  date '2026-06-12',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  200.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CARGA", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:18:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:18:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '35de2de3-5422-4598-b94f-dbea540cbaed',
  'd30c32d7-3916-4010-b8c9-d5489c2a7f73',
  date '2026-06-13',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  500.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "LOBITOS EXPRESS CONSUMO", "n_vale": "", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 08:19:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 08:19:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '7cf96468-7e63-4117-8ec4-068106220110',
  '7541e1b3-c123-4e0c-83f1-d0b8e292f653',
  date '2026-06-13',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  500.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CARGA", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 08:20:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 08:20:00-05'::timestamptz
);

select public.recalcular_diesel_historial(public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), date '2026-06-08', 'diurno');
commit;