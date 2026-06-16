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
  '863ba4fb-1440-4d47-a3a5-324fda48b583',
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
  '99c18593-d6e2-4636-8bef-c96e216d4dcf',
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
  'e0e276c6-edfa-40e2-aec8-808275b6d6c2',
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
  'ea148028-e772-4eee-bc7d-b6de5b83a251',
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
  '3fd1859d-dee9-4f7d-a1cb-b703f6424051',
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
  'c76305d3-32ea-4fa7-9072-8293ae73d51b',
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
  '923154ad-8793-491a-9f08-214d0b450bee',
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
  '893b34a5-48c3-4a84-b4e1-adf7c6e97ee4',
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
  'cb926f1e-f64a-4532-8520-307e28c34d0c',
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
  'd492fc39-b70e-49ed-bc7a-0c491d63da73',
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
  '1bbd7df8-b3e5-42ab-bb1a-f586889ad8aa',
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
  '00fe83c5-6848-491c-9846-53b73dda675d',
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
  '55b94868-1cdd-4538-ba79-da6e45dd9ce8',
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
  'a65ad3cf-a28f-44bc-a0ac-73125a808a35',
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
  'c8d07919-078c-4a70-a21e-310dc2b40ff0',
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
  'bc7237ff-77df-4e28-bae7-4bbec00a3eb3',
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
  'f0c01712-bef7-491a-9b03-59f82108376e',
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
  '4c3864bd-10a0-4d70-9e27-f6b3a470b7af',
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
  'c6ea05d4-7a11-47c6-bd92-e658c510c31f',
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
  '231293d4-0dcc-4cec-94ed-0a2c5c53999e',
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
  'a5f4df8d-77f8-4c19-b7a5-51ae68c7d5fe',
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
  'c978c77a-3f38-417d-806e-7b36002becf8',
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
  '51713708-eb89-471b-a44c-d18b965d217e',
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
  'a112744c-9343-4075-9b89-21814b447157',
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
  'fc9730aa-c90a-4e57-bab5-f693c74c1ba2',
  'e0e276c6-edfa-40e2-aec8-808275b6d6c2',
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
  '4242e1e3-14fd-46a0-94fc-2ad3fa2a4ca2',
  'ea148028-e772-4eee-bc7d-b6de5b83a251',
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
  'cc33ffcf-b0ff-430d-beab-1d5000174968',
  '863ba4fb-1440-4d47-a3a5-324fda48b583',
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
  '523a4777-57ce-4381-a448-c7bffeb6c889',
  '99c18593-d6e2-4636-8bef-c96e216d4dcf',
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
  'a342bc69-3c8b-4f20-8749-3716b8bc6a3f',
  '923154ad-8793-491a-9f08-214d0b450bee',
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
  '176edc33-d372-44e5-9558-b29976a4d58b',
  '893b34a5-48c3-4a84-b4e1-adf7c6e97ee4',
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
  '2e12ee8e-581c-4e8c-b927-d0d3be096c35',
  'c76305d3-32ea-4fa7-9072-8293ae73d51b',
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
  '28cc1576-bcd9-4add-a4be-bbeb0d265139',
  'c76305d3-32ea-4fa7-9072-8293ae73d51b',
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
  '20e56abc-dbea-48f1-90d2-2d0ee00db628',
  'c76305d3-32ea-4fa7-9072-8293ae73d51b',
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
  '678ced16-58a9-4596-92ab-c26f00ba99d2',
  '1bbd7df8-b3e5-42ab-bb1a-f586889ad8aa',
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
  '7b162eaf-4dc9-4bd1-8abe-09a48c36a2f0',
  '00fe83c5-6848-491c-9846-53b73dda675d',
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
  'bad5d3c9-a2b8-4897-84d7-3a302c4a9308',
  'cb926f1e-f64a-4532-8520-307e28c34d0c',
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
  '52f44a7f-2bea-42e9-95a1-7e0dabd2fc5d',
  'cb926f1e-f64a-4532-8520-307e28c34d0c',
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
  '1af192fe-29b2-4384-bb81-195c8343388b',
  'cb926f1e-f64a-4532-8520-307e28c34d0c',
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
  '7660cdf0-a984-486c-ad0b-c998c6f6af14',
  'd492fc39-b70e-49ed-bc7a-0c491d63da73',
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
  '03c20a02-2671-4671-b87d-3892a3eef65f',
  'd492fc39-b70e-49ed-bc7a-0c491d63da73',
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
  'ee7ee735-03af-4d22-8e2c-4eb48fe044d9',
  '1bbd7df8-b3e5-42ab-bb1a-f586889ad8aa',
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
  'd1c90ba9-34b1-4717-92cf-b0101d597d06',
  'c8d07919-078c-4a70-a21e-310dc2b40ff0',
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
  '4a41750e-f82d-40b1-833c-afdae6b66e7d',
  'bc7237ff-77df-4e28-bae7-4bbec00a3eb3',
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
  'd44b4a08-34fe-400e-8f5d-8320e7154e05',
  '55b94868-1cdd-4538-ba79-da6e45dd9ce8',
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
  'cd7e812e-bf99-417a-9e77-611329844ef5',
  'a65ad3cf-a28f-44bc-a0ac-73125a808a35',
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
  '4c2c5006-5ac6-4ae6-a673-91d9bef917da',
  '55b94868-1cdd-4538-ba79-da6e45dd9ce8',
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
  '8c8303c7-a2c6-4997-8c13-41ea31fff88a',
  'c6ea05d4-7a11-47c6-bd92-e658c510c31f',
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
  '2060406e-750c-4794-96d0-78643e9e762b',
  '231293d4-0dcc-4cec-94ed-0a2c5c53999e',
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
  '19181c62-93b9-455e-b80b-fcbab8f8213e',
  'f0c01712-bef7-491a-9b03-59f82108376e',
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
  'dc9e07f6-2c3c-416d-8aff-1e55cac96761',
  'f0c01712-bef7-491a-9b03-59f82108376e',
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
  '6764b8fb-9c71-4e49-b131-49154f9cd266',
  'f0c01712-bef7-491a-9b03-59f82108376e',
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
  '60d71ec6-e379-4d8c-aa3d-914970cef020',
  'f0c01712-bef7-491a-9b03-59f82108376e',
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
  'bce6753a-b3ac-4568-b8dc-44bd7b4bf200',
  'c6ea05d4-7a11-47c6-bd92-e658c510c31f',
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
  '34a08560-35e1-4543-a087-71a9385abfe6',
  '51713708-eb89-471b-a44c-d18b965d217e',
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
  'ead1e710-0ddc-44b3-8908-27c4e69c4203',
  'a112744c-9343-4075-9b89-21814b447157',
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
  '4a7d29f6-7841-4e46-a136-a2707d8e40db',
  'a5f4df8d-77f8-4c19-b7a5-51ae68c7d5fe',
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
  '1bc915b5-66be-44f8-bd81-b201b5686bb4',
  '51713708-eb89-471b-a44c-d18b965d217e',
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