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
  'e068fb2e-9e98-4983-bb91-108196f63d3d',
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
  '7df5d4e7-47d9-4b66-b011-5df1797e8a38',
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
  '48d02f52-3dcb-4046-bcc1-62319bb1e749',
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
  '7849b074-1b07-4acc-bbcb-fedbc66c9c79',
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
  '47c40d09-95d2-49d5-9e9b-dc19d52ad35e',
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
  'c78c1cc5-d251-4024-915a-d518fe114979',
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
  '3d4836bb-3d23-47e3-b1c1-352f5e11cef7',
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
  '9216def1-5aff-4496-9726-dd5daa19fd16',
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
  '996d3e9c-d492-4006-91c3-81fa11426895',
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
  '91e84dcc-062c-4a4d-8e9f-7486080b361d',
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
  'ed6c3028-a363-4aee-b0c5-7148465b0443',
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
  'cc3c25c3-801c-4dc1-ba30-5df6ba32f629',
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
  '051ae06b-68f5-49a2-ab2d-4d1b41518d78',
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
  'fcc3780c-5ee3-4a03-aade-3ecf259b0cd2',
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
  '70576195-c223-4d33-944e-c38420962ed8',
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
  '58a86894-8790-4d8a-9dbd-5a94344a90c7',
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
  '954a9738-442e-4794-bec0-3ca2f7f76a45',
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
  '928aae7c-2562-4211-9c95-09d4cd3abb6b',
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
  '1a7740a9-a1b1-4b60-b104-6d69295f74e4',
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
  '6b4e45b8-a4cf-42a7-a3f5-0805baf60d2c',
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
  'ca19db0e-8d15-46b5-af30-6cb963e433ef',
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
  'c1ff03be-aebf-427a-85e2-36d251c21b71',
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
  'ae5a0cf6-d8bc-4511-8b17-617afa60ecc0',
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
  '580643da-830f-45b9-a0ab-b0503428f49e',
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
  'ac3b9d89-f571-4ce3-83a6-627246ee4a7d',
  '48d02f52-3dcb-4046-bcc1-62319bb1e749',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  48.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CONSUMO", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:00:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:00:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3b3a53f2-eca7-4fb6-9332-51b39d3b0e9d',
  '7849b074-1b07-4acc-bbcb-fedbc66c9c79',
  date '2026-06-08',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  48.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CONSUMO", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:01:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:01:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'beabf9f7-e09e-426b-8174-586b6d30d3b2',
  'e068fb2e-9e98-4983-bb91-108196f63d3d',
  date '2026-06-08',
  'diurno',
  'transferencia',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('PARIÑAS'),
  400.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "PARIÑAS", "n_vale": "5797", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:02:00-05'::timestamptz,
  '5797',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:02:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '4b065b0a-10b4-4997-9dee-f731afdb5a01',
  '7df5d4e7-47d9-4b66-b011-5df1797e8a38',
  date '2026-06-08',
  'nocturno',
  'transferencia',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('PARIÑAS'),
  1300.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "PARIÑAS", "n_vale": "5798", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:03:00-05'::timestamptz,
  '5798',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:03:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3e4a2e2b-4d90-4d03-888c-30a0d1b469f5',
  '3d4836bb-3d23-47e3-b1c1-352f5e11cef7',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  48.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CONSUMO", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:04:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:04:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '63c05a82-1a3f-45fb-aa90-5dc8c2fbf3f9',
  '9216def1-5aff-4496-9726-dd5daa19fd16',
  date '2026-06-09',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  48.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CONSUMO", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:05:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:05:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '33a94bb2-b71b-4eab-a494-67968b77da9d',
  'c78c1cc5-d251-4024-915a-d518fe114979',
  date '2026-06-09',
  'nocturno',
  'transferencia',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('TALARA'),
  1500.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "TALARA", "n_vale": "5800", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:06:00-05'::timestamptz,
  '5800',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:06:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'fce6374a-1ddc-4486-a9a9-324f31e007cb',
  'c78c1cc5-d251-4024-915a-d518fe114979',
  date '2026-06-09',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  250.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "OLYMPIC EXPRESS", "n_vale": "5794", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:07:00-05'::timestamptz,
  '5794',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:07:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '8bd9a458-dd57-4fb8-b239-4da858337cb1',
  'c78c1cc5-d251-4024-915a-d518fe114979',
  date '2026-06-09',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('CABO BLANCO'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "CABO BLANCO", "n_vale": "5799", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:08:00-05'::timestamptz,
  '5799',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:08:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '864a5b7c-34ef-4fa3-a98c-f42e6caf160c',
  'ed6c3028-a363-4aee-b0c5-7148465b0443',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  48.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CONSUMO", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:09:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:09:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'fa5f3398-73f4-48df-b88e-78dbf1a9edcb',
  'cc3c25c3-801c-4dc1-ba30-5df6ba32f629',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  48.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CONSUMO", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 20:10:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 20:10:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '988fed22-cd04-472e-922a-d43beeb77af9',
  '996d3e9c-d492-4006-91c3-81fa11426895',
  date '2026-06-10',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('SHEILA R'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "SHEILA R", "n_vale": "5795", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:11:00-05'::timestamptz,
  '5795',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:11:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '442834e2-c6ef-4569-a7eb-a318382d06c8',
  '996d3e9c-d492-4006-91c3-81fa11426895',
  date '2026-06-10',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  100.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "BUCKLEY EXPRESS", "n_vale": "6052", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:12:00-05'::timestamptz,
  '6052',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:12:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0ce714ee-4269-472a-9427-0c96ed0c492a',
  '996d3e9c-d492-4006-91c3-81fa11426895',
  date '2026-06-10',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "LOBITOS EXPRESS CONSUMO", "n_vale": "", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:13:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:13:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e5168466-817e-4d83-98ca-dc22d6bb168d',
  '91e84dcc-062c-4a4d-8e9f-7486080b361d',
  date '2026-06-10',
  'nocturno',
  'transferencia',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('PARIÑAS'),
  1300.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "PARIÑAS", "n_vale": "6054", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 20:14:00-05'::timestamptz,
  '6054',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 20:14:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b6bcc0b1-34d3-4cd2-93ac-5085b87bc17c',
  '91e84dcc-062c-4a4d-8e9f-7486080b361d',
  date '2026-06-10',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "OLYMPIC EXPRESS", "n_vale": "6053", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 20:15:00-05'::timestamptz,
  '6053',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 20:15:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '143ec5b5-afd6-4791-b2a5-c61eb622a339',
  'ed6c3028-a363-4aee-b0c5-7148465b0443',
  date '2026-06-10',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  200.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CARGA", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:16:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 08:16:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'f3538c6d-c1dd-4bd1-be23-0e04485826f3',
  '70576195-c223-4d33-944e-c38420962ed8',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  48.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CONSUMO", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 08:17:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 08:17:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'dd6750c5-3f24-4129-80ec-0716210ed4ba',
  '58a86894-8790-4d8a-9dbd-5a94344a90c7',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  48.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CONSUMO", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 20:18:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 20:18:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '6325dd5e-d0c5-4ee8-980f-ce415b17c189',
  '051ae06b-68f5-49a2-ab2d-4d1b41518d78',
  date '2026-06-11',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LJ KELLEY'),
  150.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "LJ KELLEY", "n_vale": "6055", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 08:19:00-05'::timestamptz,
  '6055',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 08:19:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd620b41d-ed3a-4219-828a-ca72a0397983',
  'fcc3780c-5ee3-4a03-aade-3ecf259b0cd2',
  date '2026-06-11',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('CABO BLANCO'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "CABO BLANCO", "n_vale": "6056", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 20:20:00-05'::timestamptz,
  '6056',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 20:20:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '43a0328c-d082-42cf-ab67-279e02e078ac',
  '051ae06b-68f5-49a2-ab2d-4d1b41518d78',
  date '2026-06-11',
  'diurno',
  'recibido',
  NULL,
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  11250.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "TALARA + PARIÑAS", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 08:21:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 08:21:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd5d44113-af19-4694-9e14-36677dd8216f',
  '1a7740a9-a1b1-4b60-b104-6d69295f74e4',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  48.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CONSUMO", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:22:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:22:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '5a743e29-3bb9-4c38-915c-141ebf80d323',
  '6b4e45b8-a4cf-42a7-a3f5-0805baf60d2c',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  82.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CONSUMO", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 20:23:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 20:23:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '84dcbd23-f90a-4f15-9468-291bc26ff433',
  '954a9738-442e-4794-bec0-3ca2f7f76a45',
  date '2026-06-12',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('SHEILA R'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "SHEILA R", "n_vale": "6057", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:24:00-05'::timestamptz,
  '6057',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:24:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'cfa17094-d7ef-4145-b527-f58d310beeee',
  '954a9738-442e-4794-bec0-3ca2f7f76a45',
  date '2026-06-12',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LJ KELLEY'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "LJ KELLEY", "n_vale": "6059", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:25:00-05'::timestamptz,
  '6059',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:25:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '047eaafe-5a13-447e-94f0-5087c5346b66',
  '954a9738-442e-4794-bec0-3ca2f7f76a45',
  date '2026-06-12',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  200.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "LOBITOS EXPRESS CONSUMO", "n_vale": "", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:26:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:26:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3a051b3e-6349-4ce5-9720-4fef294deb93',
  '954a9738-442e-4794-bec0-3ca2f7f76a45',
  date '2026-06-12',
  'diurno',
  'recibido',
  NULL,
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  3000.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "TALARA", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:27:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:27:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '56c3af2a-dc4d-428d-97a8-621091afad8a',
  '1a7740a9-a1b1-4b60-b104-6d69295f74e4',
  date '2026-06-12',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  200.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CARGA", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:28:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 08:28:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '15f410c1-40cc-4969-8c37-5fbeb7e46f72',
  'ae5a0cf6-d8bc-4511-8b17-617afa60ecc0',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  286.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CONSUMO", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 08:29:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 08:29:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '5be87355-8bdc-4030-99e9-b58f1f33b352',
  '580643da-830f-45b9-a0ab-b0503428f49e',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  152.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CONSUMO", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 20:30:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 20:30:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'aa06b137-8b32-4969-b578-24c61c90703b',
  'ca19db0e-8d15-46b5-af30-6cb963e433ef',
  date '2026-06-13',
  'diurno',
  'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  500.0,
  '{"origen": "lobitos_import_20260614", "destino_texto": "LOBITOS EXPRESS CONSUMO", "n_vale": "", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 08:31:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 08:31:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '83cbcd42-a92b-4b1a-b758-f8fc13cab424',
  'ae5a0cf6-d8bc-4511-8b17-617afa60ecc0',
  date '2026-06-13',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  500.0,
  '{"origen": "lobitos_import_20260614", "origen_texto": "LOBITOS EXPRESS CARGA", "archivo": "data lobitos express y carga.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 08:32:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 08:32:00-05'::timestamptz
);

select public.recalcular_diesel_historial(public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), date '2026-06-08', 'diurno');
commit;