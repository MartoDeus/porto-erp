insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'ec5be930-4176-415d-8f64-9d3e4019de4b',
  date '2026-06-12',
  public.resolve_unidad_id('ROGUE'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROGUE'),
  1998.0,
  1955.0,
  0,
  0,
  0,
  43.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'LUIS GARCIA VALDIVIEZO',
  'JAMES CRUZ AYALA',
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
  '2abd5134-edff-43c6-8efc-98e4c7ea38f1',
  date '2026-06-12',
  public.resolve_unidad_id('ROGUE'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROGUE'),
  1955.0,
  1912.0,
  0,
  0,
  0,
  43.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'LUIS GARCIA VALDIVIEZO',
  'JOSE OTERO CRUZ',
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
  'a7e8e6db-1892-4b73-9dc5-a50567cf281a',
  date '2026-06-12',
  public.resolve_unidad_id('ROSLYN'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROSLYN'),
  739.0,
  644.0,
  0,
  0,
  0,
  95.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'JAIME PANTA',
  'ROBERTO RECABARREN',
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
  'e5391c70-608d-4876-b9b8-c1d2f91b4217',
  date '2026-06-12',
  public.resolve_unidad_id('ROSLYN'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROSLYN'),
  644.0,
  644.0,
  0,
  0,
  0,
  0.0,
  0,
  0,
  '{"despacho": false, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'T.DIA',
  'T.DIA',
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
  '71ece3fc-1991-4b53-a9ef-a02fa13d1551',
  date '2026-06-12',
  public.resolve_unidad_id('SHEILA R'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('SHEILA R'),
  324.0,
  457.0,
  0,
  0,
  0,
  67.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  200.0,
  'LOBITOS EXPRESS CARGA',
  'JUAN CARLOS CORONADO',
  'JULIO NUÑEZ',
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
  'dd6bee65-fe30-45a2-8ec1-c510da774825',
  date '2026-06-12',
  public.resolve_unidad_id('SHEILA R'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('SHEILA R'),
  457.0,
  406.0,
  0,
  0,
  0,
  51.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'ELEUTERIO SANDOVAL',
  'EDWIN NIZAMA',
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
  '53702497-d229-4c68-8109-74dfbcc40a5a',
  date '2026-06-12',
  public.resolve_unidad_id('TALARA'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('TALARA'),
  6824.0,
  6710.0,
  0,
  0,
  0,
  114.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'CARLOS CHUNGA',
  'JOSE CORDOVA',
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
  '7ab0c891-1054-471f-a01e-6b5a72ac6f2b',
  date '2026-06-12',
  public.resolve_unidad_id('TALARA'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('TALARA'),
  6710.0,
  6814.0,
  0,
  200.0,
  0,
  26.0,
  0,
  0,
  '{"despacho": true, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  3330.0,
  'AMARRADERO #4 PP',
  'JORGE REQUENA',
  'GUILLERMO LOPEZ',
  NULL,
  NULL,
  '5765',
  '2026-06-12 20:00:00-05'::timestamptz,
  '2026-06-12 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '34de7d00-deb8-4f60-9aaa-67a5d2f95972',
  date '2026-06-12',
  public.resolve_unidad_id('VILMA'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('VILMA'),
  0.0,
  0.0,
  0,
  0,
  0,
  0.0,
  0,
  0,
  '{"despacho": false, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'VARADERO',
  'VARADERO',
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
  'acb83384-8601-462c-973c-31847d563368',
  date '2026-06-12',
  public.resolve_unidad_id('VILMA'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('VILMA'),
  0.0,
  0.0,
  0,
  0,
  0,
  0.0,
  0,
  0,
  '{"despacho": false, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'VARADERO',
  'VARADERO',
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
  'e837a988-4c9d-4aa3-9da5-502c7e06c183',
  date '2026-06-13',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  343.0,
  315.0,
  0,
  0,
  0,
  28.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'WILLIAN FIESTAS',
  'ALFREDO RUMICHE',
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
  '97ed2d8b-f06b-4f3f-81ef-98c336608e07',
  date '2026-06-13',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  315.0,
  315.0,
  0,
  0,
  0,
  0.0,
  0,
  0,
  '{"despacho": false, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'T.DIA',
  'T. DIA',
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
  'f2ee1061-bb7c-4c13-ac02-1c50b08256dd',
  date '2026-06-13',
  public.resolve_unidad_id('CABO BLANCO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CABO BLANCO'),
  625.0,
  525.0,
  0,
  0,
  0,
  100.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'HUARACHA ALCIDES',
  'JUAN OLAYA BLACKET',
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
  '5efdad33-ea2a-4ed1-9255-af756716a4e3',
  date '2026-06-13',
  public.resolve_unidad_id('CABO BLANCO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CABO BLANCO'),
  525.0,
  720.0,
  0,
  0,
  0,
  5.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  200.0,
  'PARIÑAS',
  'DIA',
  'DIA',
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
  '828adba9-ebe3-4d01-927e-d492b6ec026f',
  date '2026-06-13',
  public.resolve_unidad_id('CHIP II'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CHIP II'),
  164.0,
  392.0,
  0,
  0,
  0,
  72.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  300.0,
  'TALARA',
  'JAVIER CARMEN H.',
  'ARMANDO ECA RAMIREZ',
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
  '7fc446ef-ec34-455f-b81b-d1ad782369b1',
  date '2026-06-13',
  public.resolve_unidad_id('CHIP II'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CHIP II'),
  392.0,
  299.0,
  0,
  0,
  0,
  93.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'JUAN FRANCISCO VILCHEZ NOLE',
  'VICTOR SAAVEDRA SOCOLA',
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
  '25ed696c-f3a5-4abc-899b-4717aeb01e2d',
  date '2026-06-13',
  public.resolve_unidad_id('DONALD ROBIN'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('DONALD ROBIN'),
  408.0,
  468.0,
  0,
  0,
  0,
  90.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  150.0,
  'TALARA',
  'FRANCISCO PAIVA ECA',
  'JOSE PANTA',
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
  '93b43915-81df-42d0-ae77-c8fd81e812d8',
  date '2026-06-13',
  public.resolve_unidad_id('DONALD ROBIN'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('DONALD ROBIN'),
  468.0,
  468.0,
  0,
  0,
  0,
  0.0,
  0,
  0,
  '{"despacho": false, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'DIA',
  'DIA',
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
  '434e6991-2ff7-4e1d-9491-03c55ca07d54',
  date '2026-06-13',
  public.resolve_unidad_id('ELIZABETH'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ELIZABETH'),
  1531.0,
  1531.0,
  0,
  0,
  0,
  0.0,
  0,
  0,
  '{"despacho": false, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'WILMER SULLON',
  'CESAR SULLON',
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
  '15eed2f1-7e51-44bd-ac0b-feb058294baf',
  date '2026-06-13',
  public.resolve_unidad_id('ELIZABETH'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ELIZABETH'),
  1531.0,
  1513.0,
  0,
  0,
  0,
  18.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'WILMER SULLON',
  'CESAR SULLON',
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
  '05e73675-8179-41c2-b1b2-4355e8464435',
  date '2026-06-13',
  public.resolve_unidad_id('IRIS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('IRIS'),
  425.0,
  590.0,
  0,
  0,
  0,
  35.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  200.0,
  'TALARA',
  'JULIO RAMOS',
  'ANDRES SERNAQUE',
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
  'd494fadd-c60f-4590-a907-34cf5544eda6',
  date '2026-06-13',
  public.resolve_unidad_id('IRIS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('IRIS'),
  590.0,
  539.0,
  0,
  0,
  0,
  51.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'FAUSTO PANTA CARRILLO',
  'JULIO PAREDES MOLINA',
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
  '48a1da8c-4f8e-46a6-b0fb-7ab7d6387c44',
  date '2026-06-13',
  public.resolve_unidad_id('LJ KELLEY'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LJ KELLEY'),
  576.0,
  693.0,
  0,
  0,
  0,
  83.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  200.0,
  'PARIÑAS',
  'RAMON JACINTO TUME',
  'DARWIN MARTINEZ ANTON',
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
  'd5b49b74-2600-45bc-b0ab-8a95a3eb2fdf',
  date '2026-06-13',
  public.resolve_unidad_id('LJ KELLEY'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LJ KELLEY'),
  693.0,
  619.0,
  0,
  0,
  0,
  74.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'T.DIA',
  'T.DIA',
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
  'b56ff365-3572-47d8-be4a-49bed9310f90',
  date '2026-06-13',
  public.resolve_unidad_id('MR BOB'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('MR BOB'),
  2512.0,
  2357.0,
  0,
  0,
  0,
  155.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'JAVIER RUMICHE',
  'MARCELINO PANTA IPANAQUE',
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
  '1a6a0ab5-8635-42da-82e9-e2ea1a273272',
  date '2026-06-13',
  public.resolve_unidad_id('MR BOB'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('MR BOB'),
  2357.0,
  2272.0,
  0,
  0,
  0,
  85.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'CARLOS MORE',
  'FERNANDO SUAREZ',
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
  'c47696aa-66f5-474c-b21a-f95a4ce8871f',
  date '2026-06-13',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  2043.0,
  1970.0,
  0,
  0,
  0,
  73.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'MANUEL MEDINA',
  'JOSE SOLANO',
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
  'e16fafd6-2285-4314-b0b9-f87f89295248',
  date '2026-06-13',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  1970.0,
  1958.0,
  0,
  0,
  0,
  12.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'OSCAR BOLULANGER',
  'NEPTALY GREY',
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
  'fc0e1644-347f-44c4-a12a-5779bb0c6fed',
  date '2026-06-13',
  public.resolve_unidad_id('ORO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  1865.0,
  1829.0,
  0,
  0,
  0,
  36.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'ALFREDO CAVERO JULIAN',
  'JESUS RUIZ SILVA',
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
  '20b29b45-1b77-4b6b-b8da-0748f16e47b5',
  date '2026-06-13',
  public.resolve_unidad_id('ORO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  1829.0,
  1793.0,
  0,
  0,
  0,
  36.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'ALFREDO CAVERO JULIAN',
  'ALDO RIVAS',
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
  '63075326-a287-4d3a-ba87-f28f2676b12d',
  date '2026-06-13',
  public.resolve_unidad_id('PARIÑAS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('PARIÑAS'),
  8862.0,
  8846.0,
  0,
  200.0,
  0,
  16.0,
  0,
  0,
  '{"despacho": true, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'CESAR PERICHE',
  'MIGUEL SALDARRIAGA',
  NULL,
  NULL,
  '6108',
  '2026-06-13 08:00:00-05'::timestamptz,
  '2026-06-13 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '3bfb7432-b87e-4eee-a0f4-5a263dfd3296',
  date '2026-06-13',
  public.resolve_unidad_id('PARIÑAS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('PARIÑAS'),
  8846.0,
  8430.0,
  0,
  200.0,
  0,
  16.0,
  0,
  0,
  '{"despacho": true, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'WILFREDO BOULANGER',
  'JULIO MORALES',
  NULL,
  NULL,
  '6109',
  '2026-06-13 20:00:00-05'::timestamptz,
  '2026-06-13 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'd8da8ecd-d608-4cb9-9a9b-488b88f6dcd8',
  date '2026-06-13',
  public.resolve_unidad_id('ROGUE'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROGUE'),
  1912.0,
  1873.0,
  0,
  0,
  0,
  39.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'LUIS GARCIA VALDIVIEZO',
  'JAMES CRUZ AYALA',
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
  '64bd79b7-e00c-4f88-b39a-adadf7201bbd',
  date '2026-06-13',
  public.resolve_unidad_id('ROGUE'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROGUE'),
  1873.0,
  1830.0,
  0,
  0,
  0,
  43.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'LUIS GARCIA VALDIVIEZO',
  'JOSE OTERO CRUZ',
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
  '7d0ad34b-11b2-4ed3-ab53-75b1f5a88f42',
  date '2026-06-13',
  public.resolve_unidad_id('ROSLYN'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROSLYN'),
  644.0,
  719.0,
  0,
  0,
  0,
  75.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  150.0,
  'TALARA',
  'JAIME PANTA',
  'ROBERTO RECABARREN',
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
  '67a075ce-6765-448c-ad8b-bdca6eddc68b',
  date '2026-06-13',
  public.resolve_unidad_id('ROSLYN'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROSLYN'),
  719.0,
  719.0,
  0,
  0,
  0,
  0.0,
  0,
  0,
  '{"despacho": false, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'T.DIA',
  'T.DIA',
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
  '3becbfd1-10e4-4429-8989-2cefe27b037f',
  date '2026-06-13',
  public.resolve_unidad_id('SHEILA R'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('SHEILA R'),
  406.0,
  365.0,
  0,
  0,
  0,
  41.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'JUAN CARLOS CORONADO',
  'JULIO NUÑEZ',
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
  '51e8ce66-dc6a-447d-ba2b-7f9d2835c3fe',
  date '2026-06-13',
  public.resolve_unidad_id('SHEILA R'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('SHEILA R'),
  365.0,
  329.0,
  0,
  0,
  0,
  36.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'ELEUTERIO SANDOVAL',
  'EDWIN NIZAMA',
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
  'bc1efa9d-03c8-40db-853c-ee8f67895f86',
  date '2026-06-13',
  public.resolve_unidad_id('TALARA'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('TALARA'),
  6814.0,
  6646.0,
  0,
  800.0,
  0,
  168.0,
  0,
  0,
  '{"despacho": true, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'CARLOS CHUNGA',
  'JOSE CORDOVA',
  NULL,
  NULL,
  '5768 / 5771 / 5767',
  '2026-06-13 08:00:00-05'::timestamptz,
  '2026-06-13 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'b6929344-97fb-40b9-b9d2-94f771bde661',
  date '2026-06-13',
  public.resolve_unidad_id('TALARA'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('TALARA'),
  6646.0,
  5826.0,
  0,
  0,
  0,
  20.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'JORGE REQUENA',
  'GUILLERMO LOPEZ',
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
  '3e921ab4-4b44-4984-b86c-f42cc28e7b6c',
  date '2026-06-13',
  public.resolve_unidad_id('VILMA'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('VILMA'),
  0.0,
  0.0,
  0,
  0,
  0,
  0.0,
  0,
  0,
  '{"despacho": false, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'VARADERO',
  'VARADERO',
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
  'e0b2f6b1-3469-4b8b-88ea-bd5297121c9b',
  date '2026-06-13',
  public.resolve_unidad_id('VILMA'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('VILMA'),
  0.0,
  0.0,
  0,
  0,
  0,
  0.0,
  0,
  0,
  '{"despacho": false, "consumo": false, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'VARADERO',
  'VARADERO',
  NULL,
  NULL,
  NULL,
  '2026-06-13 20:00:00-05'::timestamptz,
  '2026-06-13 20:00:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e8bc495d-0c87-43bf-9051-a92cf5537159',
  'c010d49e-e0ef-444a-9911-7a34f058ecef',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  125.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '0d139cf2-0c39-41ac-852e-5de7561041a6',
  'c010d49e-e0ef-444a-9911-7a34f058ecef',
  date '2026-06-08',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('PARIÑAS'),
  400.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "5797"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:01:00-05'::timestamptz,
  '5797',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:01:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e9dbe5fb-2ea2-4f22-b543-9dea909916a5',
  '529b5183-2df7-47ec-968e-35b441684ede',
  date '2026-06-08',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  51.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:02:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:02:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e80ba018-6c78-4909-a26b-fd0267968269',
  '529b5183-2df7-47ec-968e-35b441684ede',
  date '2026-06-08',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('PARIÑAS'),
  1300.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "5798"}'::jsonb,
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
  'f3122e1f-87ec-4332-9f89-c529bde2b913',
  '18948572-f85b-4c65-b4b2-d1f4ff271747',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  149.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:04:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:04:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'edf8fd4f-3196-4ebb-9942-1fe9b33fd143',
  '9d1773f5-833d-4c55-8f39-7d0692598973',
  date '2026-06-08',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  16.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:05:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:05:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '9b3e117c-9aa3-464e-a409-b53b4ecdb83a',
  '9d1773f5-833d-4c55-8f39-7d0692598973',
  date '2026-06-08',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('TALARA'),
  300.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "5757"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:06:00-05'::timestamptz,
  '5757',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:06:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e4bbe6f3-9a6c-4853-81d1-8b0296af4cde',
  '529b5183-2df7-47ec-968e-35b441684ede',
  date '2026-06-08',
  'nocturno',
  'transferencia',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('TALARA'),
  300.0,
  '{"destino_texto": "TALARA", "n_vale": "5757"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:06:00-05'::timestamptz,
  '5757',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:06:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '48aad949-d27e-4080-9cb1-1cf36f986295',
  '3290e109-e6ed-4e6d-8c86-a56af3efd373',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  50.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:08:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:08:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '7d0e31aa-d6a8-4d71-80c8-b2150a6d39c0',
  '23da03a1-c950-462c-89f1-63ecb8f9f8f2',
  date '2026-06-08',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  4.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:09:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:09:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '6e09b9e3-b1b6-4582-96d1-f708b6c6c9a1',
  'f58a17f5-3bc1-4848-83b4-c7060f9abf14',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('DONALD ROBIN'),
  public.resolve_unidad_id('DONALD ROBIN'),
  85.0,
  '{"origen_texto": "DONALD ROBIN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:10:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:10:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1ca1170f-24a9-4fc6-9f6e-5bb6cb71ffad',
  'ef19c732-917a-4375-bf46-84a2ed9f9565',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  12.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:11:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:11:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e3f82cf2-e5b9-424c-9f4c-dbc138e8bff4',
  '17b4c549-fa35-457f-90e5-4ba9638c4593',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  26.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:12:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:12:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '62409207-31be-497c-81a4-89af625acf5f',
  '79391675-16d1-4163-beeb-02c9991d36a0',
  date '2026-06-08',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  48.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:13:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:13:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1d575e53-17b8-49b2-8975-4932b45f8c58',
  '9b0d1e3e-1765-447a-90c7-5dfb4fd1ecc3',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROSLYN'),
  public.resolve_unidad_id('ROSLYN'),
  45.0,
  '{"origen_texto": "ROSLYN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:14:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:14:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd439ac33-5ee1-4530-be74-e20e7ac968a4',
  'b813e41e-b11b-4be3-a0f9-4c1a9686eca1',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  80.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:15:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:15:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '98eaa3dc-25de-4ca1-bd8d-847d0a21e64f',
  'ca7f177d-2187-4f03-9461-232a55fa86ef',
  date '2026-06-08',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  60.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:16:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:16:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd65c3918-8f10-44b2-ba46-45754435b399',
  'fd2e36c4-eda1-4fbd-a0c8-a2b1adbff67f',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  85.0,
  '{"origen_texto": "BUCKLEY EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:17:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:17:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '928d4a60-d876-4050-bdcb-9d7bbcbef0b8',
  'fd2e36c4-eda1-4fbd-a0c8-a2b1adbff67f',
  date '2026-06-08',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  200.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "5787"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:18:00-05'::timestamptz,
  '5787',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:18:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd3d612f7-b166-44d9-91e7-9b3de18f369a',
  'c010d49e-e0ef-444a-9911-7a34f058ecef',
  date '2026-06-08',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  200.0,
  '{"destino_texto": "BUCKLEY EXPRESS", "n_vale": "5787"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:18:00-05'::timestamptz,
  '5787',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:18:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'ef25c298-e731-4b54-bf03-5d56c9d6e504',
  '2ce9d342-513d-4e60-96d8-26dfcc619e0d',
  date '2026-06-08',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  50.0,
  '{"origen_texto": "BUCKLEY EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:20:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:20:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '60e6ae59-defb-4cb2-bbb6-466a13237263',
  '03d9f659-bdc0-40cd-9346-0305b0fdf653',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  40.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:21:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:21:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'bf99642b-da6b-4d2f-aef4-50647131e562',
  'd8661761-ebca-4274-b2ec-644af7f7118a',
  date '2026-06-08',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  20.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:22:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:22:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'a8040973-4ab2-4c79-915b-04228b00b34f',
  '5ae21320-c2e7-40eb-9a15-7d9acd0a7040',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  72.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:23:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:23:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '62a99b79-3bde-4a7e-b4a1-de79797e1b74',
  '0652abeb-411a-4751-b512-e2ddca7f4b55',
  date '2026-06-08',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  18.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:24:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:24:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b09619bb-2cf0-4619-a363-3272b135672d',
  '47cda49e-4542-45e1-938d-fd1eb04d21d5',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:25:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:25:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b07fbbb7-9903-4851-b963-4b1591865ee1',
  'a2d73b4c-8cf6-4c4e-9b92-460926421624',
  date '2026-06-08',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:26:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:26:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e70a3e95-c36f-4b65-82e0-681797474f48',
  '7f962a2e-cc7e-4ac3-a9e5-6266a11b98c9',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  45.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:27:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:27:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '43fc2d28-7d94-4e64-951d-58dbb3bf1db3',
  '4204210c-e8ea-4a24-9f9c-9cb18a03f4a7',
  date '2026-06-08',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  43.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:28:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:28:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '80fbf8be-6023-48f3-9f4d-614d1c19f295',
  'aa2514b8-3b64-488c-ba8f-c9d965d493ee',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  65.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:29:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:29:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1bfe900d-298a-423c-84b3-27b8c71d3d8a',
  'f484cbec-790f-463f-9404-031e3d26be00',
  date '2026-06-08',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  45.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:30:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:30:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c5dc4f1e-4911-4666-9293-a83c2b4dfa27',
  '2ddf6eb6-180a-4cbd-87df-f0a5e1337a49',
  date '2026-06-08',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  63.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:31:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 08:31:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd25e8d4a-44e8-4754-89bd-45fad0899eca',
  'f67e8bce-b645-4a3d-a025-616c074efe78',
  date '2026-06-08',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  12.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:32:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-08 20:32:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0f2aa41b-be60-4581-aa40-15a25cd949fa',
  '1db7eb6f-956b-4993-99f7-0dbaca1c8237',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  173.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:33:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:33:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '4f00c283-571c-44b8-a228-6a71c9ee5d78',
  'd6031349-c491-4cf3-95e9-4f2efe0561c8',
  date '2026-06-09',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  16.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:34:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:34:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '266e983c-ca2b-4934-8fc7-a3f76d00f713',
  '69e94018-e694-4278-8bcc-e318badf2afd',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  172.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:35:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:35:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3fb05558-82ba-4a91-8624-82f3976a787f',
  'be4471a6-3d53-436a-9cab-e3fecd721709',
  date '2026-06-09',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  16.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:36:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:36:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '496e5f95-0caa-4f22-8aa1-e8503b8f925e',
  'be4471a6-3d53-436a-9cab-e3fecd721709',
  date '2026-06-09',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('TALARA'),
  1500.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "5800"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:37:00-05'::timestamptz,
  '5800',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:37:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3ae954bb-ea3c-49f4-a1de-1eae3760e6e2',
  '7d5f6264-4963-4d28-bd4f-26bac9670bab',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  211.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:38:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:38:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd20330ba-0f68-4005-ba27-0127d8db82d2',
  '5559b7dd-db0b-48bf-a0e4-136466a2e71e',
  date '2026-06-09',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  17.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:39:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:39:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'a89f33ea-96e0-4b48-8ec5-15cdb7a4fa11',
  '5559b7dd-db0b-48bf-a0e4-136466a2e71e',
  date '2026-06-09',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  250.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "5794"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:40:00-05'::timestamptz,
  '5794',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:40:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '9fbdeea3-25b1-49f1-8bf9-75b763d90244',
  '10e292e1-ca14-43b3-8499-317269b7a6cc',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('DONALD ROBIN'),
  public.resolve_unidad_id('DONALD ROBIN'),
  95.0,
  '{"origen_texto": "DONALD ROBIN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:41:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:41:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '01fb7199-5331-43e0-910c-97416ef37de3',
  '10e292e1-ca14-43b3-8499-317269b7a6cc',
  date '2026-06-09',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('DONALD ROBIN'),
  180.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "5789"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:42:00-05'::timestamptz,
  '5789',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:42:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e96deb86-7af8-43a2-a9ad-9089b79a793e',
  '1db7eb6f-956b-4993-99f7-0dbaca1c8237',
  date '2026-06-09',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('DONALD ROBIN'),
  180.0,
  '{"destino_texto": "DONALD ROBIN", "n_vale": "5789"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:42:00-05'::timestamptz,
  '5789',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:42:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '391f84f4-3544-4fdd-bfc4-2f4acc3982c3',
  '46025925-460b-453e-ab9f-c36a61988740',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  6.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:44:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:44:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '072bec2f-e22a-44ee-9f92-c53413cff935',
  '0690858d-571f-440f-88fa-39ca9632808a',
  date '2026-06-09',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  40.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:45:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:45:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0c6758fe-1033-4c4d-bd53-ede86423729b',
  '848d2208-a811-4b6e-9983-fc2ec70a69ed',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  40.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:46:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:46:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0318f814-3fc1-4c57-ab93-f3ab2d1424cb',
  '848d2208-a811-4b6e-9983-fc2ec70a69ed',
  date '2026-06-09',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('IRIS'),
  150.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "5791"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:47:00-05'::timestamptz,
  '5791',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:47:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'f2529f7d-0cf6-4fcc-977e-39f64b218fcd',
  '1db7eb6f-956b-4993-99f7-0dbaca1c8237',
  date '2026-06-09',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('IRIS'),
  150.0,
  '{"destino_texto": "IRIS", "n_vale": "5791"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:47:00-05'::timestamptz,
  '5791',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:47:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'cc5e75f4-e6c7-42f6-932b-6581f4e50aad',
  '495e07ff-f558-44e0-bf8a-86ba188f49ee',
  date '2026-06-09',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  47.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:49:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:49:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '38d5bb39-550d-4c1c-9fc0-409bc6553a0a',
  'b5ec9a3d-b78f-49f5-bf9a-5f24963d4e87',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROSLYN'),
  public.resolve_unidad_id('ROSLYN'),
  79.0,
  '{"origen_texto": "ROSLYN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:50:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:50:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '260dd896-542a-484d-813b-ec08713d71e6',
  'b5ec9a3d-b78f-49f5-bf9a-5f24963d4e87',
  date '2026-06-09',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('ROSLYN'),
  200.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "5790"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:51:00-05'::timestamptz,
  '5790',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:51:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '4c571054-5604-4de9-9264-6b600777a507',
  '1db7eb6f-956b-4993-99f7-0dbaca1c8237',
  date '2026-06-09',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('ROSLYN'),
  200.0,
  '{"destino_texto": "ROSLYN", "n_vale": "5790"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:51:00-05'::timestamptz,
  '5790',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:51:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'a2f586d2-24c4-4d4b-a9cb-c8d1ff6f0731',
  '0d88248f-3065-4c16-8293-9c740f0f1802',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  97.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:53:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:53:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'ef0a522e-3002-4eb6-b99b-3e7b6b18a36c',
  '0d88248f-3065-4c16-8293-9c740f0f1802',
  date '2026-06-09',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('CHIP II'),
  250.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "5788"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:54:00-05'::timestamptz,
  '5788',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:54:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '37b1c20d-4432-4e75-8bce-c7714f0e3ecf',
  '1db7eb6f-956b-4993-99f7-0dbaca1c8237',
  date '2026-06-09',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('CHIP II'),
  250.0,
  '{"destino_texto": "CHIP II", "n_vale": "5788"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:54:00-05'::timestamptz,
  '5788',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:54:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '693e552e-56c1-4c4e-a10a-a845781f8f45',
  '58497db0-e7a3-4be5-8637-2cec586f2c64',
  date '2026-06-09',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  60.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:56:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 20:56:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b5c4fab7-d8bd-44e5-b264-7a13c35728ac',
  'da12b9cc-0725-4412-91bd-46ac8051faf6',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  100.0,
  '{"origen_texto": "BUCKLEY EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:57:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:57:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '13ae79db-1cf8-48b0-9874-3283a3e539a1',
  'dc05920e-4cb6-470f-8ec2-50cdfcf934c0',
  date '2026-06-09',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  60.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:58:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-09 08:58:00-05'::timestamptz
);
