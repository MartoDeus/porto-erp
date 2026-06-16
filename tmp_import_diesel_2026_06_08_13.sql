begin;
delete from public.diesel_movimientos where fecha >= date '2026-06-08';
delete from public.diesel_kardex where fecha >= date '2026-06-08';

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'fd2e36c4-eda1-4fbd-a0c8-a2b1adbff67f',
  date '2026-06-08',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  407.0,
  522.0,
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
  200.0,
  'PARIÑAS',
  'ELEUTERIO SANDOVAL',
  'EDWIN NIZAMA',
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
  '2ce9d342-513d-4e60-96d8-26dfcc619e0d',
  date '2026-06-08',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  522.0,
  472.0,
  0,
  0,
  0,
  50.0,
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
  'RICHARD PANTA',
  'JAVIER PEÑA',
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
  '03d9f659-bdc0-40cd-9346-0305b0fdf653',
  date '2026-06-08',
  public.resolve_unidad_id('CABO BLANCO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CABO BLANCO'),
  550.0,
  510.0,
  0,
  0,
  0,
  40.0,
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
  '2026-06-08 08:00:00-05'::timestamptz,
  '2026-06-08 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'd8661761-ebca-4274-b2ec-644af7f7118a',
  date '2026-06-08',
  public.resolve_unidad_id('CABO BLANCO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CABO BLANCO'),
  510.0,
  490.0,
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
  'DIA',
  'DIA',
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
  'b813e41e-b11b-4be3-a0f9-4c1a9686eca1',
  date '2026-06-08',
  public.resolve_unidad_id('CHIP II'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CHIP II'),
  388.0,
  308.0,
  0,
  0,
  0,
  80.0,
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
  'JAVIER CARMEN H.',
  'ARMANDO ECA RAMIREZ',
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
  'ca7f177d-2187-4f03-9461-232a55fa86ef',
  date '2026-06-08',
  public.resolve_unidad_id('CHIP II'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CHIP II'),
  308.0,
  248.0,
  0,
  0,
  0,
  60.0,
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
  '2026-06-08 20:00:00-05'::timestamptz,
  '2026-06-08 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'f58a17f5-3bc1-4848-83b4-c7060f9abf14',
  date '2026-06-08',
  public.resolve_unidad_id('DONALD ROBIN'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('DONALD ROBIN'),
  518.0,
  433.0,
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
  'FRANCISCO PAIVA ECA',
  'JOSE PANTA',
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
  'c29e280c-15c5-4361-8dc2-826232aaecbd',
  date '2026-06-08',
  public.resolve_unidad_id('DONALD ROBIN'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('DONALD ROBIN'),
  433.0,
  433.0,
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
  '2026-06-08 20:00:00-05'::timestamptz,
  '2026-06-08 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '5ae21320-c2e7-40eb-9a15-7d9acd0a7040',
  date '2026-06-08',
  public.resolve_unidad_id('ELIZABETH'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ELIZABETH'),
  1825.0,
  1753.0,
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
  0,
  NULL,
  'LUIS ZAPATA BAYONA',
  'VASQUEZ MORALES',
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
  '0652abeb-411a-4751-b512-e2ddca7f4b55',
  date '2026-06-08',
  public.resolve_unidad_id('ELIZABETH'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ELIZABETH'),
  1753.0,
  1735.0,
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
  'LUIS ZAPATA BAYONA',
  'VASQUEZ MORALES',
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
  '17b4c549-fa35-457f-90e5-4ba9638c4593',
  date '2026-06-08',
  public.resolve_unidad_id('IRIS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('IRIS'),
  633.0,
  607.0,
  0,
  0,
  0,
  26.0,
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
  'JUAN COSAVALENTE',
  'RICARDO MORAN AROCHE',
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
  '79391675-16d1-4163-beeb-02c9991d36a0',
  date '2026-06-08',
  public.resolve_unidad_id('IRIS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('IRIS'),
  607.0,
  559.0,
  0,
  0,
  0,
  48.0,
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
  'ROBERTO PAIVA',
  'JESUS VITE',
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
  '2ddf6eb6-180a-4cbd-87df-f0a5e1337a49',
  date '2026-06-08',
  public.resolve_unidad_id('LJ KELLEY'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LJ KELLEY'),
  497.0,
  434.0,
  0,
  0,
  0,
  63.0,
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
  'RAMON JACINTO TUME',
  'PERCY NAVARRO MARTINEZ',
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
  'f67e8bce-b645-4a3d-a025-616c074efe78',
  date '2026-06-08',
  public.resolve_unidad_id('LJ KELLEY'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LJ KELLEY'),
  434.0,
  422.0,
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
  'T.DIA',
  'T.DIA',
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
  'aa2514b8-3b64-488c-ba8f-c9d965d493ee',
  date '2026-06-08',
  public.resolve_unidad_id('MR BOB'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('MR BOB'),
  2487.0,
  2422.0,
  0,
  0,
  0,
  65.0,
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
  'ARTURO REVOLLEDO RETO',
  'GERMAN CHUNGA',
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
  'f484cbec-790f-463f-9404-031e3d26be00',
  date '2026-06-08',
  public.resolve_unidad_id('MR BOB'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('MR BOB'),
  2422.0,
  2377.0,
  0,
  0,
  0,
  45.0,
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
  'GERMAN CHUNGA',
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
  '3290e109-e6ed-4e6d-8c86-a56af3efd373',
  date '2026-06-08',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  2020.0,
  1970.0,
  0,
  0,
  0,
  50.0,
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
  'MARLON SANTILLAN CORDOVA',
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
  '23da03a1-c950-462c-89f1-63ecb8f9f8f2',
  date '2026-06-08',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  1970.0,
  1966.0,
  0,
  0,
  0,
  4.0,
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
  'RICHARD ATOCHE',
  'GERMAN CRUZ',
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
  '47cda49e-4542-45e1-938d-fd1eb04d21d5',
  date '2026-06-08',
  public.resolve_unidad_id('ORO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  2237.0,
  2201.0,
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
  'ALFONSO SANTIBAÑEZ',
  'YISDAN HUANCA',
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
  'a2d73b4c-8cf6-4c4e-9b92-460926421624',
  date '2026-06-08',
  public.resolve_unidad_id('ORO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  2201.0,
  2165.0,
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
  'ALFONSO SANTIBAÑEZ',
  'MARIO SOSA',
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
  'c010d49e-e0ef-444a-9911-7a34f058ecef',
  date '2026-06-08',
  public.resolve_unidad_id('PARIÑAS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('PARIÑAS'),
  3082.0,
  3357.0,
  0,
  200.0,
  0,
  125.0,
  0,
  0,
  '{"despacho": true, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  400.0,
  'LOBITOS EXPRESS CARGA',
  'WILFREDO BOULANGER',
  'GUILLERMO LOPEZ',
  NULL,
  NULL,
  '5787',
  '2026-06-08 08:00:00-05'::timestamptz,
  '2026-06-08 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '529b5183-2df7-47ec-968e-35b441684ede',
  date '2026-06-08',
  public.resolve_unidad_id('PARIÑAS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('PARIÑAS'),
  3357.0,
  4106.0,
  0,
  0,
  300.0,
  51.0,
  0,
  0,
  '{"despacho": true, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  1300.0,
  'LOBITOS EXPRESS CARGA',
  'MANUEL TINOCO',
  'JUAN COSAVALENTE',
  NULL,
  NULL,
  '5757',
  '2026-06-08 20:00:00-05'::timestamptz,
  '2026-06-08 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '7f962a2e-cc7e-4ac3-a9e5-6266a11b98c9',
  date '2026-06-08',
  public.resolve_unidad_id('ROGUE'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROGUE'),
  1849.0,
  1804.0,
  0,
  0,
  0,
  45.0,
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
  '2026-06-08 08:00:00-05'::timestamptz,
  '2026-06-08 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '4204210c-e8ea-4a24-9f9c-9cb18a03f4a7',
  date '2026-06-08',
  public.resolve_unidad_id('ROGUE'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROGUE'),
  1804.0,
  1761.0,
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
  '2026-06-08 20:00:00-05'::timestamptz,
  '2026-06-08 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '9b0d1e3e-1765-447a-90c7-5dfb4fd1ecc3',
  date '2026-06-08',
  public.resolve_unidad_id('ROSLYN'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROSLYN'),
  618.0,
  573.0,
  0,
  0,
  0,
  45.0,
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
  'MARTIR GARCIA',
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
  '53d2ae59-e323-4eeb-a66f-32910159cf63',
  date '2026-06-08',
  public.resolve_unidad_id('ROSLYN'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROSLYN'),
  573.0,
  573.0,
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
  'T DIA',
  'T.DIA',
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
  'ef19c732-917a-4375-bf46-84a2ed9f9565',
  date '2026-06-08',
  public.resolve_unidad_id('SHEILA R'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('SHEILA R'),
  371.0,
  359.0,
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
  'WILIAM FIESTAS',
  'ALFREDO RUMICHE',
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
  '5b710fed-1faa-48fa-9cf7-ba31ee4ce204',
  date '2026-06-08',
  public.resolve_unidad_id('SHEILA R'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('SHEILA R'),
  359.0,
  359.0,
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
  'CUSTODIA',
  'CUSTODIA',
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
  '18948572-f85b-4c65-b4b2-d1f4ff271747',
  date '2026-06-08',
  public.resolve_unidad_id('TALARA'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('TALARA'),
  1837.0,
  1688.0,
  0,
  0,
  0,
  149.0,
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
  'DONALD ZAPATA',
  'CARLOS BALDA',
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
  '9d1773f5-833d-4c55-8f39-7d0692598973',
  date '2026-06-08',
  public.resolve_unidad_id('TALARA'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('TALARA'),
  1688.0,
  1972.0,
  0,
  0,
  0,
  16.0,
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
  'PARIÑAS',
  'JOSE HIDALGO',
  'PERCY PANTA',
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
  '33118b47-afe6-4eec-975d-40a266373ecf',
  date '2026-06-08',
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
  '2026-06-08 08:00:00-05'::timestamptz,
  '2026-06-08 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'a57ab2bf-2dc8-41b6-a4e4-ec113a7be12e',
  date '2026-06-08',
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
  '2026-06-08 20:00:00-05'::timestamptz,
  '2026-06-08 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'da12b9cc-0725-4412-91bd-46ac8051faf6',
  date '2026-06-09',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  472.0,
  372.0,
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
  'WILLIAN FIESTAS',
  'ALFREDO RUMICHE',
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
  'fa51db6d-eb81-4564-8f43-21bcd25d2b6a',
  date '2026-06-09',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  372.0,
  372.0,
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
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'dc05920e-4cb6-470f-8ec2-50cdfcf934c0',
  date '2026-06-09',
  public.resolve_unidad_id('CABO BLANCO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CABO BLANCO'),
  490.0,
  430.0,
  0,
  0,
  0,
  60.0,
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
  '2026-06-09 08:00:00-05'::timestamptz,
  '2026-06-09 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '03ba89a0-bce6-4a2b-a561-fd3cb68e69f9',
  date '2026-06-09',
  public.resolve_unidad_id('CABO BLANCO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CABO BLANCO'),
  430.0,
  620.0,
  0,
  0,
  0,
  10.0,
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
  'DIA',
  'DIA',
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
  '0d88248f-3065-4c16-8293-9c740f0f1802',
  date '2026-06-09',
  public.resolve_unidad_id('CHIP II'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CHIP II'),
  248.0,
  401.0,
  0,
  0,
  0,
  97.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  250.0,
  'PARIÑAS',
  'JAVIER CARMEN H.',
  'ARMANDO ECA RAMIREZ',
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
  '58497db0-e7a3-4be5-8637-2cec586f2c64',
  date '2026-06-09',
  public.resolve_unidad_id('CHIP II'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CHIP II'),
  401.0,
  341.0,
  0,
  0,
  0,
  60.0,
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
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '10e292e1-ca14-43b3-8499-317269b7a6cc',
  date '2026-06-09',
  public.resolve_unidad_id('DONALD ROBIN'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('DONALD ROBIN'),
  433.0,
  518.0,
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
  180.0,
  'PARIÑAS',
  'FRANCISCO PAIVA ECA',
  'JOSE PANTA',
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
  'afb8e915-de58-462d-a540-033f50492669',
  date '2026-06-09',
  public.resolve_unidad_id('DONALD ROBIN'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('DONALD ROBIN'),
  518.0,
  518.0,
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
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'a11cae0b-02f1-4260-8af9-840a44e2d6eb',
  date '2026-06-09',
  public.resolve_unidad_id('ELIZABETH'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ELIZABETH'),
  1735.0,
  1699.0,
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
  'WILMER SULLON',
  'CESAR SULLON',
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
  '081c2ae3-8a4a-4e4e-b1a4-a9da9d5776bd',
  date '2026-06-09',
  public.resolve_unidad_id('ELIZABETH'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ELIZABETH'),
  1699.0,
  1681.0,
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
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '848d2208-a811-4b6e-9983-fc2ec70a69ed',
  date '2026-06-09',
  public.resolve_unidad_id('IRIS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('IRIS'),
  559.0,
  669.0,
  0,
  0,
  0,
  40.0,
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
  'PARIÑAS',
  'JULIO RAMOS',
  'ANDRES SERNAQUE',
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
  '495e07ff-f558-44e0-bf8a-86ba188f49ee',
  date '2026-06-09',
  public.resolve_unidad_id('IRIS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('IRIS'),
  669.0,
  622.0,
  0,
  0,
  0,
  47.0,
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
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'b67f858e-3184-48ba-8a7d-dcc2db49db88',
  date '2026-06-09',
  public.resolve_unidad_id('KK'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('KK'),
  0.0,
  0.0,
  0,
  0,
  0,
  3.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  3.0,
  'ORO',
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
  '767d9e12-d30c-49d6-a8ab-bf90e264a1e5',
  date '2026-06-09',
  public.resolve_unidad_id('LJ KELLEY'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LJ KELLEY'),
  422.0,
  560.0,
  0,
  0,
  0,
  62.0,
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
  'RAMON JACINTO TUME',
  'DARWIN MARTINEZ ANTON',
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
  '6bde061f-1608-4006-a819-7fa0f88bf1e7',
  date '2026-06-09',
  public.resolve_unidad_id('LJ KELLEY'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LJ KELLEY'),
  560.0,
  560.0,
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
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '29f1a605-bd11-47d9-b250-9f1b3efe9a82',
  date '2026-06-09',
  public.resolve_unidad_id('MR BOB'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('MR BOB'),
  2377.0,
  2288.0,
  0,
  0,
  0,
  89.0,
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
  '2026-06-09 08:00:00-05'::timestamptz,
  '2026-06-09 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '702706bc-c0dd-44a4-bbef-f483b5f2fb33',
  date '2026-06-09',
  public.resolve_unidad_id('MR BOB'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('MR BOB'),
  2288.0,
  2243.0,
  0,
  0,
  0,
  45.0,
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
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '7d5f6264-4963-4d28-bd4f-26bac9670bab',
  date '2026-06-09',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  1966.0,
  1755.0,
  0,
  0,
  0,
  211.0,
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
  '2026-06-09 08:00:00-05'::timestamptz,
  '2026-06-09 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '5559b7dd-db0b-48bf-a0e4-136466a2e71e',
  date '2026-06-09',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  1755.0,
  1988.0,
  0,
  0,
  0,
  17.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  250.0,
  'LOBITOS EXPRESS CARGA',
  'OSCAR BOLULANGER',
  'NEPTALY GREY',
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
  '08ccc944-f545-4599-b4dc-763aaf8c7246',
  date '2026-06-09',
  public.resolve_unidad_id('ORO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  2165.0,
  2126.0,
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
  '2026-06-09 08:00:00-05'::timestamptz,
  '2026-06-09 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '3fdff1b3-5a55-4b48-9d66-2b7e175a8d5f',
  date '2026-06-09',
  public.resolve_unidad_id('ORO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  2126.0,
  2090.0,
  0,
  3.0,
  0,
  36.0,
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
  'ALFREDO CAVERO JULIAN',
  'ALDO RIVAS',
  NULL,
  NULL,
  '80749',
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '1db7eb6f-956b-4993-99f7-0dbaca1c8237',
  date '2026-06-09',
  public.resolve_unidad_id('PARIÑAS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('PARIÑAS'),
  4106.0,
  3933.0,
  0,
  780.0,
  0,
  173.0,
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
  '5789 / 5791 / 5790 / 5788',
  '2026-06-09 08:00:00-05'::timestamptz,
  '2026-06-09 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'd6031349-c491-4cf3-95e9-4f2efe0561c8',
  date '2026-06-09',
  public.resolve_unidad_id('PARIÑAS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('PARIÑAS'),
  3933.0,
  3137.0,
  0,
  0,
  0,
  16.0,
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
  'WILFREDO BOULANGER',
  'JULIO MORALES',
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
  '4bdd24cc-a09b-4e97-846f-ba899f7217c9',
  date '2026-06-09',
  public.resolve_unidad_id('ROGUE'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROGUE'),
  1761.0,
  1719.0,
  0,
  0,
  0,
  42.0,
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
  '2026-06-09 08:00:00-05'::timestamptz,
  '2026-06-09 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'fe3f5101-241e-4984-a9b3-74d6b8c85879',
  date '2026-06-09',
  public.resolve_unidad_id('ROGUE'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROGUE'),
  1719.0,
  1674.0,
  0,
  0,
  0,
  45.0,
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
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'b5ec9a3d-b78f-49f5-bf9a-5f24963d4e87',
  date '2026-06-09',
  public.resolve_unidad_id('ROSLYN'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROSLYN'),
  573.0,
  694.0,
  0,
  0,
  0,
  79.0,
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
  'JAIME PANTA',
  'ROBERTO RECABARREN',
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
  '775ed117-3985-46a0-a154-334ead4ea7f2',
  date '2026-06-09',
  public.resolve_unidad_id('ROSLYN'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROSLYN'),
  694.0,
  694.0,
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
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '46025925-460b-453e-ab9f-c36a61988740',
  date '2026-06-09',
  public.resolve_unidad_id('SHEILA R'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('SHEILA R'),
  359.0,
  353.0,
  0,
  0,
  0,
  6.0,
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
  '2026-06-09 08:00:00-05'::timestamptz,
  '2026-06-09 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '0690858d-571f-440f-88fa-39ca9632808a',
  date '2026-06-09',
  public.resolve_unidad_id('SHEILA R'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('SHEILA R'),
  353.0,
  313.0,
  0,
  0,
  0,
  40.0,
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
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '69e94018-e694-4278-8bcc-e318badf2afd',
  date '2026-06-09',
  public.resolve_unidad_id('TALARA'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('TALARA'),
  1972.0,
  1800.0,
  0,
  200.0,
  0,
  172.0,
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
  '5758',
  '2026-06-09 08:00:00-05'::timestamptz,
  '2026-06-09 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'be4471a6-3d53-436a-9cab-e3fecd721709',
  date '2026-06-09',
  public.resolve_unidad_id('TALARA'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('TALARA'),
  1800.0,
  3084.0,
  0,
  0,
  0,
  16.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  1500.0,
  'LOBITOS EXPRESS CARGA',
  'JORGE REQUENA',
  'GUILLERMO LOPEZ',
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
  '752f0d27-e852-40a6-a8cb-4cb4512aae23',
  date '2026-06-09',
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
  '2026-06-09 08:00:00-05'::timestamptz,
  '2026-06-09 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'ca6b6662-7911-43bd-ad9e-4f65f370099a',
  date '2026-06-09',
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
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '6877357b-5050-491a-bc38-35e1b6ca0b05',
  date '2026-06-10',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  372.0,
  443.0,
  0,
  0,
  0,
  29.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  100.0,
  'LOBITOS EXPRESS CARGA',
  'WILLIAN FIESTAS',
  'ALFREDO RUMICHE',
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
  'f49a510c-004e-432c-9d9d-b37ab33f4854',
  date '2026-06-10',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  443.0,
  438.0,
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
  0,
  NULL,
  'T.DIA',
  'T. DIA',
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
  '0ab8fd89-beda-4c56-9d9f-865a030ecb3a',
  date '2026-06-10',
  public.resolve_unidad_id('CABO BLANCO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CABO BLANCO'),
  620.0,
  570.0,
  0,
  0,
  0,
  50.0,
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
  '2026-06-10 08:00:00-05'::timestamptz,
  '2026-06-10 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '9a7c0b23-a1e0-4554-83fe-82f257cc7390',
  date '2026-06-10',
  public.resolve_unidad_id('CABO BLANCO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CABO BLANCO'),
  570.0,
  550.0,
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
  'DIA',
  'DIA',
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
  'ca047d55-9783-4b05-846d-9282a9bc7720',
  date '2026-06-10',
  public.resolve_unidad_id('CHIP II'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CHIP II'),
  341.0,
  266.0,
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
  0,
  NULL,
  'JAVIER CARMEN H.',
  'ARMANDO ECA RAMIREZ',
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
  '77b04d7f-a640-480e-80b8-26d9ba746951',
  date '2026-06-10',
  public.resolve_unidad_id('CHIP II'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CHIP II'),
  266.0,
  192.0,
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
  'JUAN FRANCISCO VILCHEZ NOLE',
  'VICTOR SAAVEDRA SOCOLA',
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
  '7ab92130-cee8-44f1-b65e-283e279624ac',
  date '2026-06-10',
  public.resolve_unidad_id('DONALD ROBIN'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('DONALD ROBIN'),
  518.0,
  433.0,
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
  'FRANCISCO PAIVA ECA',
  'JOSE PANTA',
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
  '432b63a9-cee7-48ff-ae72-f8fd10efa0b7',
  date '2026-06-10',
  public.resolve_unidad_id('DONALD ROBIN'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('DONALD ROBIN'),
  433.0,
  433.0,
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
  '2026-06-10 20:00:00-05'::timestamptz,
  '2026-06-10 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'e94a9682-6475-41f6-abf3-edfe78163f91',
  date '2026-06-10',
  public.resolve_unidad_id('ELIZABETH'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ELIZABETH'),
  1681.0,
  1649.0,
  0,
  0,
  0,
  32.0,
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
  '2026-06-10 08:00:00-05'::timestamptz,
  '2026-06-10 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '7d7a13cf-6d86-4634-a0da-489a4bac22c0',
  date '2026-06-10',
  public.resolve_unidad_id('ELIZABETH'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ELIZABETH'),
  1649.0,
  1631.0,
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
  '2026-06-10 20:00:00-05'::timestamptz,
  '2026-06-10 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '0aad849d-af39-470c-ac80-100ec5609d56',
  date '2026-06-10',
  public.resolve_unidad_id('IRIS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('IRIS'),
  622.0,
  575.0,
  0,
  0,
  0,
  47.0,
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
  'JULIO RAMOS',
  'ANDRES SERNAQUE',
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
  '2a4e31d7-2e5c-42a4-b3b3-daf1369611d2',
  date '2026-06-10',
  public.resolve_unidad_id('IRIS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('IRIS'),
  575.0,
  529.0,
  0,
  0,
  0,
  46.0,
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
  '2026-06-10 20:00:00-05'::timestamptz,
  '2026-06-10 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'd86c2656-2873-4553-b70c-b0a73b8df62f',
  date '2026-06-10',
  public.resolve_unidad_id('LJ KELLEY'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LJ KELLEY'),
  560.0,
  608.0,
  0,
  0,
  0,
  102.0,
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
  'RAMON JACINTO TUME',
  'DARWIN MARTINEZ ANTON',
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
  'f8075c7f-b7c6-4d3c-a628-ef598d479b89',
  date '2026-06-10',
  public.resolve_unidad_id('LJ KELLEY'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LJ KELLEY'),
  608.0,
  553.0,
  0,
  0,
  0,
  55.0,
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
  '2026-06-10 20:00:00-05'::timestamptz,
  '2026-06-10 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '042d414a-2212-4c0f-8a1e-a9475e2f0762',
  date '2026-06-10',
  public.resolve_unidad_id('MR BOB'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('MR BOB'),
  2243.0,
  2930.0,
  0,
  0,
  0,
  113.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  800.0,
  'TALARA',
  'JAVIER RUMICHE',
  'MARCELINO PANTA IPANAQUE',
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
  '871c53d2-7e3a-4956-9ffc-e8f3446a4257',
  date '2026-06-10',
  public.resolve_unidad_id('MR BOB'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('MR BOB'),
  2930.0,
  2885.0,
  0,
  0,
  0,
  45.0,
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
  '2026-06-10 20:00:00-05'::timestamptz,
  '2026-06-10 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '80c66149-19ec-467e-9ba3-ae984aa5cd1b',
  date '2026-06-10',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  1988.0,
  1824.0,
  0,
  0,
  0,
  164.0,
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
  '2026-06-10 08:00:00-05'::timestamptz,
  '2026-06-10 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'e4c5c943-4714-4112-a622-3ff6fd506013',
  date '2026-06-10',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  1824.0,
  2022.0,
  0,
  0,
  0,
  2.0,
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
  'OSCAR BOLULANGER',
  'NEPTALY GREY',
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
  'bcd33e22-a335-49b1-9022-281f1d95926f',
  date '2026-06-10',
  public.resolve_unidad_id('ORO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  2090.0,
  2051.0,
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
  '2026-06-10 08:00:00-05'::timestamptz,
  '2026-06-10 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '29439432-00ad-40a1-9c9c-42f55b81ee12',
  date '2026-06-10',
  public.resolve_unidad_id('ORO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  2051.0,
  2015.0,
  0,
  3.0,
  0,
  36.0,
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
  'ALFREDO CAVERO JULIAN',
  'ALDO RIVAS',
  NULL,
  NULL,
  '81458',
  '2026-06-10 20:00:00-05'::timestamptz,
  '2026-06-10 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '3298bbf5-8b9c-4949-9d72-d06143cf01b3',
  date '2026-06-10',
  public.resolve_unidad_id('PARIÑAS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('PARIÑAS'),
  3137.0,
  2996.0,
  0,
  0,
  0,
  141.0,
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
  'CESAR PERICHE',
  'MIGUEL SALDARRIAGA',
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
  'ee262381-2dec-4669-9df6-5f9eed17cad3',
  date '2026-06-10',
  public.resolve_unidad_id('PARIÑAS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('PARIÑAS'),
  2996.0,
  4270.0,
  0,
  0,
  0,
  26.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  1300.0,
  'LOBITOS EXPRESS CARGA',
  'WILFREDO BOULANGER',
  'JULIO MORALES',
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
  'fb3104b0-7390-48be-8b62-04f9ac361c97',
  date '2026-06-10',
  public.resolve_unidad_id('R'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('R'),
  0.0,
  0.0,
  0,
  0,
  0,
  3.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  3.0,
  'ORO',
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
  '3a0eec19-8a0e-4e01-9a33-a19ceb9d7e40',
  date '2026-06-10',
  public.resolve_unidad_id('ROGUE'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROGUE'),
  1674.0,
  1633.0,
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
  'LUIS GARCIA VALDIVIEZO',
  'JAMES CRUZ AYALA',
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
  'bfd2559d-9c81-42f2-add1-e674b8efaaa0',
  date '2026-06-10',
  public.resolve_unidad_id('ROGUE'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROGUE'),
  1633.0,
  1590.0,
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
  '2026-06-10 20:00:00-05'::timestamptz,
  '2026-06-10 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'f8c5a6a1-9712-4521-a6e9-5004395d433c',
  date '2026-06-10',
  public.resolve_unidad_id('ROSLYN'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROSLYN'),
  694.0,
  644.0,
  0,
  0,
  0,
  50.0,
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
  '2026-06-10 08:00:00-05'::timestamptz,
  '2026-06-10 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'be810e90-a483-4290-b999-f93b5c664351',
  date '2026-06-10',
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
  '2026-06-10 20:00:00-05'::timestamptz,
  '2026-06-10 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'a1436276-79e3-4e4f-a565-9723bcc8680e',
  date '2026-06-10',
  public.resolve_unidad_id('SHEILA R'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('SHEILA R'),
  313.0,
  464.0,
  0,
  0,
  0,
  49.0,
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
  '2026-06-10 08:00:00-05'::timestamptz,
  '2026-06-10 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'b223e532-8daa-4729-b73d-110790ad1bad',
  date '2026-06-10',
  public.resolve_unidad_id('SHEILA R'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('SHEILA R'),
  464.0,
  417.0,
  0,
  0,
  0,
  47.0,
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
  '2026-06-10 20:00:00-05'::timestamptz,
  '2026-06-10 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'ddf55421-7595-4736-8e2d-92801e6b3ef7',
  date '2026-06-10',
  public.resolve_unidad_id('TALARA'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('TALARA'),
  3084.0,
  2964.0,
  0,
  150.0,
  800.0,
  120.0,
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
  '5759 / 5760',
  '2026-06-10 08:00:00-05'::timestamptz,
  '2026-06-10 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'fedae839-1583-46cb-8773-2e0d21b75b0e',
  date '2026-06-10',
  public.resolve_unidad_id('TALARA'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('TALARA'),
  2964.0,
  1998.0,
  0,
  0,
  0,
  16.0,
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
  '2026-06-10 20:00:00-05'::timestamptz,
  '2026-06-10 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '839d0ff9-f56a-48de-a5df-87bee9640173',
  date '2026-06-10',
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
  '2026-06-10 08:00:00-05'::timestamptz,
  '2026-06-10 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '35819e86-7d10-4ec0-af52-f6742eabe1e3',
  date '2026-06-10',
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
  '2026-06-10 20:00:00-05'::timestamptz,
  '2026-06-10 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '8c649307-71cc-41a0-812c-3ed255fa6664',
  date '2026-06-11',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  438.0,
  415.0,
  0,
  0,
  0,
  23.0,
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
  '2026-06-11 08:00:00-05'::timestamptz,
  '2026-06-11 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '8f3ad6d2-98b3-4454-9ee6-2f5da985474a',
  date '2026-06-11',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  415.0,
  415.0,
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
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'e8d94d9b-072f-4eb9-803e-15d6eab5fa51',
  date '2026-06-11',
  public.resolve_unidad_id('CABO BLANCO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CABO BLANCO'),
  550.0,
  500.0,
  0,
  0,
  0,
  50.0,
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
  '2026-06-11 08:00:00-05'::timestamptz,
  '2026-06-11 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '9e26f236-7103-454c-93cd-78b6cf217de1',
  date '2026-06-11',
  public.resolve_unidad_id('CABO BLANCO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CABO BLANCO'),
  500.0,
  690.0,
  0,
  0,
  0,
  10.0,
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
  'DIA',
  'DIA',
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
  'ef14e112-8c0c-466e-8cf8-6346ae3a7255',
  date '2026-06-11',
  public.resolve_unidad_id('CHIP II'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CHIP II'),
  192.0,
  360.0,
  0,
  0,
  0,
  82.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  250.0,
  'PARIÑAS',
  'JAVIER CARMEN H.',
  'ARMANDO ECA RAMIREZ',
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
  'e5c78c34-0789-413f-85fb-a493a37328ed',
  date '2026-06-11',
  public.resolve_unidad_id('CHIP II'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CHIP II'),
  360.0,
  308.0,
  0,
  0,
  0,
  52.0,
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
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '562d51a2-74ca-4673-94bb-298b8411d71c',
  date '2026-06-11',
  public.resolve_unidad_id('DONALD ROBIN'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('DONALD ROBIN'),
  433.0,
  501.0,
  0,
  0,
  0,
  82.0,
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
  'PARIÑAS',
  'FRANCISCO PAIVA ECA',
  'JOSE PANTA',
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
  'd85d7990-093c-4739-9a18-9e9b22e81ad0',
  date '2026-06-11',
  public.resolve_unidad_id('DONALD ROBIN'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('DONALD ROBIN'),
  501.0,
  501.0,
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
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'ba068503-a75f-4aff-8d8e-f9e25ba8378e',
  date '2026-06-11',
  public.resolve_unidad_id('ELIZABETH'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ELIZABETH'),
  1631.0,
  1599.0,
  0,
  0,
  0,
  32.0,
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
  '2026-06-11 08:00:00-05'::timestamptz,
  '2026-06-11 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'be505a49-1941-4e20-bd6e-333a7e93377d',
  date '2026-06-11',
  public.resolve_unidad_id('ELIZABETH'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ELIZABETH'),
  1599.0,
  1581.0,
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
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '4da912a7-8fc4-4bbc-b3a9-8a475ba49298',
  date '2026-06-11',
  public.resolve_unidad_id('IRIS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('IRIS'),
  529.0,
  586.0,
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
  100.0,
  'PARIÑAS',
  'JULIO RAMOS',
  'ANDRES SERNAQUE',
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
  '10262722-26d3-481b-af1d-80e11e102bed',
  date '2026-06-11',
  public.resolve_unidad_id('IRIS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('IRIS'),
  586.0,
  539.0,
  0,
  0,
  0,
  47.0,
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
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'aa17b746-dddc-4662-a8fb-84e6efa9eb4c',
  date '2026-06-11',
  public.resolve_unidad_id('LJ KELLEY'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LJ KELLEY'),
  553.0,
  608.0,
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
  150.0,
  'LOBITOS EXPRESS CARGA',
  'RAMON JACINTO TUME',
  'DARWIN MARTINEZ ANTON',
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
  '625445e5-b00a-49e0-8740-16fb5cce901f',
  date '2026-06-11',
  public.resolve_unidad_id('LJ KELLEY'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LJ KELLEY'),
  608.0,
  553.0,
  0,
  0,
  0,
  55.0,
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
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '11303a34-9be4-4b96-b53a-1baf85682665',
  date '2026-06-11',
  public.resolve_unidad_id('MR BOB'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('MR BOB'),
  2885.0,
  2751.0,
  0,
  0,
  0,
  134.0,
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
  '2026-06-11 08:00:00-05'::timestamptz,
  '2026-06-11 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '969db2ed-214c-425e-ac84-9eb4bef04440',
  date '2026-06-11',
  public.resolve_unidad_id('MR BOB'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('MR BOB'),
  2751.0,
  2706.0,
  0,
  0,
  0,
  45.0,
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
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '6466bd14-8146-40b3-85d0-8eaf944e9409',
  date '2026-06-11',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  2022.0,
  1897.0,
  0,
  0,
  0,
  125.0,
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
  '2026-06-11 08:00:00-05'::timestamptz,
  '2026-06-11 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '0c5985c8-4e70-4252-94e1-04fa9c5d45c0',
  date '2026-06-11',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  1897.0,
  2043.0,
  0,
  0,
  0,
  104.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  250.0,
  'PARIÑAS',
  'OSCAR BOLULANGER',
  'NEPTALY GREY',
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
  'daa43d92-20a8-44dc-bc1c-032b580c18a4',
  date '2026-06-11',
  public.resolve_unidad_id('ORO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  2015.0,
  1979.0,
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
  '2026-06-11 08:00:00-05'::timestamptz,
  '2026-06-11 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'b167c160-97cb-4c47-8f7d-ef3506b19eaa',
  date '2026-06-11',
  public.resolve_unidad_id('ORO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  1979.0,
  1943.0,
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
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '56cb08fe-3a88-4c60-be22-141875f9b6a9',
  date '2026-06-11',
  public.resolve_unidad_id('PARIÑAS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('PARIÑAS'),
  4270.0,
  4115.0,
  0,
  650.0,
  500.0,
  157.0,
  2.0,
  0,
  '{"despacho": true, "consumo": true, "recarga": false, "sondaje": true, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": [{"index": 1, "document": "7780", "returnVolume": 2.0, "difference": 0, "consumption": 0}]}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  0,
  NULL,
  'CESAR PERICHE',
  'MIGUEL SALDARRIAGA',
  '7780',
  NULL,
  '5793 / 6102 / 6103 / 5792 / 6101',
  '2026-06-11 08:00:00-05'::timestamptz,
  '2026-06-11 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'bde87c71-68ab-4314-b75e-7656405ad152',
  date '2026-06-11',
  public.resolve_unidad_id('PARIÑAS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('PARIÑAS'),
  4115.0,
  2898.0,
  0,
  250.0,
  0,
  27.0,
  0,
  0,
  '{"despacho": true, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  5960.0,
  'AMARRADERO #4 PP',
  'WILFREDO BOULANGER',
  'JULIO MORALES',
  NULL,
  NULL,
  '6105',
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '86ebb397-dba0-4c84-8288-926c11f57495',
  date '2026-06-11',
  public.resolve_unidad_id('ROGUE'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROGUE'),
  1590.0,
  2051.0,
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
  500.0,
  'PARIÑAS',
  'LUIS GARCIA VALDIVIEZO',
  'JAMES CRUZ AYALA',
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
  '59dc7d77-ef2a-4fd5-a535-67bf25ef994e',
  date '2026-06-11',
  public.resolve_unidad_id('ROGUE'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROGUE'),
  2051.0,
  1998.0,
  0,
  0,
  0,
  53.0,
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
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '1caa58ad-d515-4d8f-b0de-3bce9b4c04cc',
  date '2026-06-11',
  public.resolve_unidad_id('ROSLYN'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROSLYN'),
  644.0,
  739.0,
  0,
  0,
  0,
  55.0,
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
  'PARIÑAS',
  'JAIME PANTA',
  'ROBERTO RECABARREN',
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
  'ae4181d1-afe4-4427-b6dc-81fe1a0c6f37',
  date '2026-06-11',
  public.resolve_unidad_id('ROSLYN'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ROSLYN'),
  739.0,
  739.0,
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
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '5d37d5bd-e859-4309-a138-3ae3b9392cff',
  date '2026-06-11',
  public.resolve_unidad_id('SHEILA R'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('SHEILA R'),
  417.0,
  371.0,
  0,
  0,
  0,
  46.0,
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
  '2026-06-11 08:00:00-05'::timestamptz,
  '2026-06-11 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'fa40a5a1-2b6d-48e0-9eef-6552101b21d1',
  date '2026-06-11',
  public.resolve_unidad_id('SHEILA R'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('SHEILA R'),
  371.0,
  324.0,
  0,
  0,
  0,
  47.0,
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
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '16dfbe1f-e382-4da9-8145-63f9342cd46e',
  date '2026-06-11',
  public.resolve_unidad_id('TALARA'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('TALARA'),
  1998.0,
  1854.0,
  0,
  0,
  0,
  142.0,
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
  '2026-06-11 08:00:00-05'::timestamptz,
  '2026-06-11 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '8e390afa-2721-4682-96db-2ef7a06ee0d5',
  date '2026-06-11',
  public.resolve_unidad_id('TALARA'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('TALARA'),
  1854.0,
  6824.0,
  0,
  0,
  0,
  44.0,
  0,
  2.0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": true, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": [{"index": 1, "document": "7781", "returnVolume": 0, "difference": -2.0, "consumption": 0}]}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  10514.0,
  'AMARRADERO #4 PP',
  'JORGE REQUENA',
  'GUILLERMO LOPEZ',
  '7781',
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
  'cc517c11-8975-43a8-bde2-91b761c442ae',
  date '2026-06-11',
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
  '2026-06-11 08:00:00-05'::timestamptz,
  '2026-06-11 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '65b4ddf3-ae38-42df-8fa5-29b91c01a334',
  date '2026-06-11',
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
  '2026-06-11 20:00:00-05'::timestamptz,
  '2026-06-11 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'eebe4349-b490-461b-913d-238eea4aa484',
  date '2026-06-12',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  415.0,
  343.0,
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
  0,
  NULL,
  'WILLIAN FIESTAS',
  'ALFREDO RUMICHE',
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
  'a0f0cdf2-8e07-42a1-a467-b339c49429de',
  date '2026-06-12',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  343.0,
  343.0,
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
  '2026-06-12 20:00:00-05'::timestamptz,
  '2026-06-12 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '1d0c974b-2760-4fb6-adf7-eba552792a7d',
  date '2026-06-12',
  public.resolve_unidad_id('CABO BLANCO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CABO BLANCO'),
  690.0,
  630.0,
  0,
  0,
  0,
  60.0,
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
  '2026-06-12 08:00:00-05'::timestamptz,
  '2026-06-12 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '1eabcdf1-b961-41f1-98c3-1e3a2daa5638',
  date '2026-06-12',
  public.resolve_unidad_id('CABO BLANCO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CABO BLANCO'),
  630.0,
  625.0,
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
  0,
  NULL,
  'DIA',
  'DIA',
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
  '04898140-05e8-4ea6-8077-52010cfa217c',
  date '2026-06-12',
  public.resolve_unidad_id('CHIP II'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CHIP II'),
  308.0,
  238.0,
  0,
  0,
  0,
  70.0,
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
  'JAVIER CARMEN H.',
  'ARMANDO ECA RAMIREZ',
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
  'ee160a8f-e9b1-43fa-b6cc-a8d0a678c02a',
  date '2026-06-12',
  public.resolve_unidad_id('CHIP II'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('CHIP II'),
  238.0,
  164.0,
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
  'JUAN FRANCISCO VILCHEZ NOLE',
  'VICTOR SAAVEDRA SOCOLA',
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
  '79a45915-7bf3-4535-84f8-5d7ec8e52d37',
  date '2026-06-12',
  public.resolve_unidad_id('DONALD ROBIN'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('DONALD ROBIN'),
  501.0,
  408.0,
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
  'FRANCISCO PAIVA ECA',
  'JOSE PANTA',
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
  '0b71d477-c899-40ce-8fca-f8f587a1fdb0',
  date '2026-06-12',
  public.resolve_unidad_id('DONALD ROBIN'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('DONALD ROBIN'),
  408.0,
  408.0,
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
  '2026-06-12 20:00:00-05'::timestamptz,
  '2026-06-12 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '9d2e408f-d017-4cac-afb3-408a6731c2e7',
  date '2026-06-12',
  public.resolve_unidad_id('ELIZABETH'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ELIZABETH'),
  1581.0,
  1549.0,
  0,
  0,
  0,
  32.0,
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
  '2026-06-12 08:00:00-05'::timestamptz,
  '2026-06-12 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '69ba1530-ae7f-4054-9854-344b4e502cb1',
  date '2026-06-12',
  public.resolve_unidad_id('ELIZABETH'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ELIZABETH'),
  1549.0,
  1531.0,
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
  '2026-06-12 20:00:00-05'::timestamptz,
  '2026-06-12 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '266aedee-713c-49ac-bf5a-49d69cacd4bd',
  date '2026-06-12',
  public.resolve_unidad_id('IRIS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('IRIS'),
  539.0,
  488.0,
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
  'JULIO RAMOS',
  'ANDRES SERNAQUE',
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
  '5ea892cb-28a1-4045-82d3-a5ba5260ce84',
  date '2026-06-12',
  public.resolve_unidad_id('IRIS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('IRIS'),
  488.0,
  425.0,
  0,
  0,
  0,
  63.0,
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
  '2026-06-12 20:00:00-05'::timestamptz,
  '2026-06-12 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '1e4df03b-9064-4671-ac45-035990e334f7',
  date '2026-06-12',
  public.resolve_unidad_id('LJ KELLEY'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LJ KELLEY'),
  553.0,
  648.0,
  0,
  0,
  0,
  105.0,
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
  'RAMON JACINTO TUME',
  'DARWIN MARTINEZ ANTON',
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
  '32a9cdda-1b80-41b1-81fb-5081e401c124',
  date '2026-06-12',
  public.resolve_unidad_id('LJ KELLEY'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('LJ KELLEY'),
  648.0,
  576.0,
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
  'ccb626da-9b54-4f82-a9ef-a5a42b8ffaa1',
  date '2026-06-12',
  public.resolve_unidad_id('MR BOB'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('MR BOB'),
  2706.0,
  2557.0,
  0,
  0,
  0,
  149.0,
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
  '2026-06-12 08:00:00-05'::timestamptz,
  '2026-06-12 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'c14ffbe0-9205-429c-b647-7c6ca4fe3792',
  date '2026-06-12',
  public.resolve_unidad_id('MR BOB'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('MR BOB'),
  2557.0,
  2512.0,
  0,
  0,
  0,
  45.0,
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
  '2026-06-12 20:00:00-05'::timestamptz,
  '2026-06-12 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'c7abe445-125f-480f-bbff-00353477347a',
  date '2026-06-12',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  2043.0,
  1860.0,
  0,
  0,
  0,
  183.0,
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
  '2026-06-12 08:00:00-05'::timestamptz,
  '2026-06-12 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '6686e8a2-9993-451e-8353-ef8507d022ea',
  date '2026-06-12',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  1860.0,
  2043.0,
  0,
  0,
  0,
  17.0,
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
  'OSCAR BOLULANGER',
  'NEPTALY GREY',
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
  'd4abc1df-523b-43e1-a6fd-8cb4b4490c44',
  date '2026-06-12',
  public.resolve_unidad_id('ORO'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  1943.0,
  1901.0,
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
  '2026-06-12 08:00:00-05'::timestamptz,
  '2026-06-12 08:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '0d3ac4d3-e72c-49ac-ae28-e4c237dff095',
  date '2026-06-12',
  public.resolve_unidad_id('ORO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  1901.0,
  1865.0,
  0,
  6.0,
  0,
  36.0,
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
  'ALFREDO CAVERO JULIAN',
  'ALDO RIVAS',
  NULL,
  NULL,
  '81459',
  '2026-06-12 20:00:00-05'::timestamptz,
  '2026-06-12 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'a77badb8-4a57-483d-bf54-a4c3d9d3907d',
  date '2026-06-12',
  public.resolve_unidad_id('PARIÑAS'),
  'diurno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('PARIÑAS'),
  2898.0,
  2703.0,
  0,
  0,
  0,
  195.0,
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
  'CESAR PERICHE',
  'MIGUEL SALDARRIAGA',
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
  '41e679ce-fe15-4022-ab76-c2aa8695dd0a',
  date '2026-06-12',
  public.resolve_unidad_id('PARIÑAS'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('PARIÑAS'),
  2703.0,
  8862.0,
  0,
  0,
  0,
  55.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": true, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  6214.0,
  'AMARRADERO #4 PP',
  'WILFREDO BOULANGER',
  'JULIO MORALES',
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
  'cda697c5-9f09-48cc-8794-d3104640efa6',
  date '2026-06-12',
  public.resolve_unidad_id('PN1'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('PN1'),
  0.0,
  0.0,
  0,
  0,
  0,
  3.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  3.0,
  'ORO',
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
  '6df36f4d-2de1-4853-971d-52b91bf83a4a',
  date '2026-06-12',
  public.resolve_unidad_id('PN8'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('PN8'),
  0.0,
  0.0,
  0,
  0,
  0,
  3.0,
  0,
  0,
  '{"despacho": false, "consumo": true, "recarga": false, "sondaje": false, "tripulacion": false, "observaciones": false}'::jsonb,
  '{"sondajes": []}'::jsonb,
  NULL,
  true,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  3.0,
  'ORO',
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