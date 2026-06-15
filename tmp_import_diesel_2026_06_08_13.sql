begin;
delete from public.diesel_movimientos where fecha >= date '2026-06-08';
delete from public.diesel_kardex where fecha >= date '2026-06-08';

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '3a5097a3-2059-4e61-b0b0-32c1d20d188d',
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
  '9fcc8fd2-c644-4652-825b-57f33ca376fc',
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
  '22ea5784-126b-4281-af44-8e57bd5cbdee',
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
  '6c94782f-9c61-40de-b9b2-41cc06aab2a1',
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
  '417116b0-68ec-44b5-ba8c-a8f1e3712ff5',
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
  '6fb32f31-9471-4b48-8e1f-3d4ac242203b',
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
  '06d2372f-9317-44ac-a020-e6e835a1cd65',
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
  '989d45d3-369a-44cf-978d-71c8294782f7',
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
  '4993d2b1-abe6-496a-8733-ffcb5a939521',
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
  '0888989a-3330-4f26-aebb-2d6cb4a34a2c',
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
  '062a59ac-b3cb-4fab-aa0b-9cf6193274a9',
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
  'de91c798-37a3-4b7b-8def-6e08076ffbdb',
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
  'ff20fd91-a423-4c80-a5fe-0469fc4820a2',
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
  '9dddae21-4cbe-44bc-a7f1-70b21ab61787',
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
  '19d827d9-da44-4c1f-9aac-487b9603df25',
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
  '256b28bf-4564-4e08-bf02-a10e3049b5c7',
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
  '0aaa237e-d2b0-4b5e-a518-eb73bb2ee634',
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
  'e0774559-ae10-455f-912d-ef562f234fb8',
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
  'd53b256c-506d-4257-b365-1a6cf146db47',
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
  'a36c232b-8a8b-479c-a4b8-fc9c97d7ad22',
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
  'b1e13a21-98d6-4470-8b5a-2f37a3b40216',
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
  'bd95f6ab-4f9e-4b59-9168-9b30d5b88540',
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
  'be2b9d44-f2c8-4af0-9dca-7f009d16e748',
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
  'e9f31f36-e7a0-4ea8-a8f3-115af9daadf6',
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
  'e595fed1-da22-45ea-bfa7-02488a2ad292',
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
  '95e92715-8f02-4082-bc28-9420d70b9c9a',
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
  'fa4e49cc-f7fb-448e-83e3-08d10e7c1965',
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
  '5d36cc13-1c52-4d1c-a392-8c4d953e1627',
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
  '5d72579a-0a21-4a1d-9f3f-54e4c75f3f4e',
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
  'b16db5c6-fa78-47d9-9d65-028f47b37b28',
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
  'bc1b32c1-ec58-4e7a-9914-064f803111ea',
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
  '99d34778-7e18-4430-8fb6-cad72bff883d',
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
  'afca0801-1753-4558-b076-42d89a3b1eb2',
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
  '6be993c3-ed59-453e-9ca6-3dc7b76498e4',
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
  '620ccf58-1e78-4c45-a9d5-1cef5c09a44d',
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
  '50f4a066-a960-4f69-8745-d1fc54b0aa1b',
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
  '6162d011-474a-4375-bc57-4999e7185c4b',
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
  'bf0aeddc-5d02-418f-ae00-0c6fa5a67ec9',
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
  'fd2d8e34-71a5-4ce4-9773-a2f691e15db4',
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
  '32363658-5f8a-4c21-af5c-e6989db510fb',
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
  '00caeb45-86ba-4300-985f-27754627d0f1',
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
  '28ae1fdd-303c-41b3-821f-ad35440c4a90',
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
  '6e46e2b7-ba56-4d5e-b12b-9322024cff38',
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
  '8c75e9e7-82dd-493e-a48d-797a758eea75',
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
  '2e8bf753-0a3f-4ea3-bc74-ed43389c4d62',
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
  '1e721ec3-381a-491e-927b-f2490926ef11',
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
  'b97b6dea-6f6a-47b1-a617-35740fe575f8',
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
  'e54bf9b2-22af-4705-a1df-355937d70d58',
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
  'a6f1f38c-5eed-4f49-8fc7-b32a2d8bccb3',
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
  '3fcef271-f36f-4954-918a-9d1a337642cc',
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
  'fd36ffa5-78e1-46b7-a1e5-3911e0aa7007',
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
  'a23ef273-a14f-4d39-bd1b-fb0de9f514c4',
  date '2026-06-09',
  public.resolve_unidad_id('ORO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  2126.0,
  2090.0,
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
  '2026-06-09 20:00:00-05'::timestamptz,
  '2026-06-09 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  'e313c1a5-acdd-4b91-849b-4edccacea4b9',
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
  '2870edf8-aaef-48d1-9138-4e3277140101',
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
  '646bf7a4-8d22-49b7-84cd-7fade0bb477e',
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
  '84ce20b3-03ef-4f84-87fa-f354f2831d9f',
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
  'edef3162-1e8d-4fba-af70-19af67fedb5f',
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
  'a3ed2d41-5571-47fe-a62b-630436895ac1',
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
  '4e2ce85a-446b-45e7-99ef-7ffcaf3a4fff',
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
  '20551468-5ef7-4a4d-a163-ab05254bbfd8',
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
  'a3ecf596-e7cb-411a-9fe3-9d75bcf17da4',
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
  '8db56218-b81b-4992-9233-9c938acb97eb',
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
  '51a1bd25-b3f8-4ef3-8a5d-b4e777a6c792',
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
  '1813dd47-0268-44c2-b437-b9ea57a67528',
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
  '02e7d8ed-2223-4d1e-ac1c-857e284a47af',
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
  '46284417-a7ad-440d-bb92-922d87f7c24d',
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
  '8b43d1a0-6cbc-42d1-8c13-ee8dfcdd1def',
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
  'a31f8a9d-9388-489d-9ec2-a30ce748c36e',
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
  '4adf80ad-d725-4252-9454-e598aa770016',
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
  '27b78d71-d29e-47d7-b174-354dbc5f459b',
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
  '114de2fb-fac0-4318-bb5a-58f26dbf6548',
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
  'b964851e-46f6-402e-8d95-ad1e4b4969ed',
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
  '58d08cf9-cd81-4c77-89b3-0afa998c703a',
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
  '93c4501d-fdc7-436d-9574-0b0febcb8a33',
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
  'f3a06f67-9cbc-4e43-af50-68adcef76249',
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
  'fbdca30f-b832-4fda-86d1-3fe3dca3ce59',
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
  '478328cc-4984-4018-85ed-7cf5742d7a73',
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
  '97b81dd1-bea4-4620-aff3-9089c6aad0b2',
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
  'ef2031a9-2d67-49e8-9cfb-60c1067c26a0',
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
  'e6fc9629-f6ba-4e1e-b5d0-1e70e8d5ad08',
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
  '1d88a920-a960-4d36-bf56-b74de4561081',
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
  'c0b97c19-63b5-4f35-9f58-1b1462d1d0bf',
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
  '674d951a-bf1f-41dd-be2d-ec6081789e82',
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
  'c34ea56c-6a8a-40f6-8575-7a660b013c7c',
  date '2026-06-10',
  public.resolve_unidad_id('ORO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  2051.0,
  2015.0,
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
  '2026-06-10 20:00:00-05'::timestamptz,
  '2026-06-10 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '75a6e29e-e781-408d-b6bf-768a34d777aa',
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
  'f7d4c2f0-2e4a-466e-b0a2-d98a65305d17',
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
  '33542bb7-591c-46d9-8005-1f1ba5ef1fc0',
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
  '687b4025-de6c-4666-a23e-8be9995aecd5',
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
  '6e70728f-8cf2-4954-94d7-01cb79db1874',
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
  'b1d9c8ef-94b0-446a-9b93-d81c83f4cca1',
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
  '50f74a56-fb19-4fc1-8a6e-d6188c17e8fd',
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
  '19aaac86-2294-4b1b-a2b3-799fff738eb2',
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
  '61f2c480-7c9c-4390-a7bc-55de920cd0b0',
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
  'b0cd1a95-4bca-48b9-829b-930bdb2d9330',
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
  'e6af2813-6480-48b8-aa9c-98d2333584ac',
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
  '37167d66-c786-4a99-ab22-99e3e4bf6475',
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
  '3becb090-9175-44d5-821d-4b45cc670188',
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
  '1b5e6b39-c734-4ed2-89f6-893dd6cc2831',
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
  '39a656b1-507b-4255-a302-efeed6f592b0',
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
  '52186a33-bf2c-4c0b-9653-febdc147fa54',
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
  '27f69f5f-ccd1-480f-ada1-2f9506ec6765',
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
  '2ed20103-57db-480b-a051-56e9a0ea4ae7',
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
  '5f2db688-8d67-46e3-9f1a-12bb19fabbdf',
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
  'df984a68-0bb2-4d5a-9f68-cceb5ce17d13',
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
  '59ab0ceb-d52b-4eaa-aa21-e2583d1fa848',
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
  '01d78bf6-3702-45f8-a9ef-93db9176ca16',
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
  'a69caf12-f0de-41a6-940b-b800b991c0f7',
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
  'dd01fb04-beb6-434f-b11e-995a5f51975a',
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
  'c21ca8c8-1178-4b12-9cdb-124a8e98ecd1',
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
  'ab613d75-3fd0-4f41-b6ea-ebf1d5e6af80',
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
  '16998cf6-42ad-4e61-b6ea-ccfbc5e0aeb8',
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
  '509ffee5-0243-443c-8903-36795fdd4bb4',
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
  'f2f699a5-bb3b-4f8f-8387-e14b00fc641d',
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
  '7d67b72a-d75e-4177-b04e-ee76ef74c720',
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
  '98439dc0-a0b1-4a43-8e63-fa46ba045fc5',
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
  'f2f26424-cc42-41af-a496-abd56c5b4961',
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
  'bd94da26-452e-4e58-b2ab-41bdf5ebdddf',
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
  '51f9df65-1439-4a73-9c07-6c423bc6b1cd',
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
  '6851551d-2a8d-4eab-bbc2-b5062a46131d',
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
  '852ac5c3-4e58-4ad8-bdbb-99a3e9790f85',
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
  'aa42a7ad-0d27-403a-89b1-a3b7d3936633',
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
  'eb6d6b8e-cd92-48a2-8cca-8e9cc9c53635',
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
  'faa28a7b-45ee-44de-9014-2155afb0a283',
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
  '562eb015-343f-4431-8e64-3e04ba2c6b6d',
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
  '004ca935-ce61-48ac-952a-ad8f38f1c678',
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
  '469fd2e4-4449-4405-8c7c-ddccc1277b67',
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
  '22f5e8b9-c2ce-47b7-a282-91d552cbcb91',
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
  'b3fa4db4-41b2-4af1-834a-92ec069f2911',
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
  '850e5cad-c8b4-411a-85c8-6520d73b7352',
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
  'fc930b1c-6c8d-4029-9f8e-55e71df2ad60',
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
  '3b4a16bc-fc03-4e9c-8aac-94b48c7639f6',
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
  '76380824-d110-4563-8e91-8a2911484e02',
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
  '168f3b0a-c45b-45fa-9d00-15a6d826afd3',
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
  'dea692a1-cae1-4ca7-944f-bdd6b492bf80',
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
  '32fbfd49-a0e5-4e7f-a50a-61d30650ca52',
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
  'ebccc06e-33dc-411c-97e6-29b1eac30b5e',
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
  '02b241e7-d869-43f7-9099-2f9456deecfd',
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
  '39c9d92c-797a-46c8-9b4a-43d3f97051c1',
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
  '68e4a4c3-b5a6-4ac6-8846-0ff9eb9b7e16',
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
  'cf10d477-e9a5-4a31-8829-39af507eb546',
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
  '274a8279-d35e-4a50-ada8-08f01d50e5b0',
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
  '2a1dca8d-cfd0-4ba1-a081-93c089a0a8b3',
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
  '6e719ea2-25ef-475a-be73-5fe9b2eba962',
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
  '395900ec-b9e6-4c18-adfc-25b3b8741cc1',
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
  '95c8ef1d-501a-4e3a-862b-4be99d0db479',
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
  '018c4edd-8dca-4005-a877-ede6cc15117d',
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
  'abef1fde-f867-488c-ae07-73c5ee4c6a4a',
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
  'bf96c4e1-3f0c-499b-bd0a-1113ddcae99d',
  date '2026-06-12',
  public.resolve_unidad_id('ORO'),
  'nocturno',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  public.resolve_unidad_id('ORO'),
  1901.0,
  1865.0,
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
  '2026-06-12 20:00:00-05'::timestamptz,
  '2026-06-12 20:00:00-05'::timestamptz
);

insert into public.diesel_kardex (
  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,
  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,
  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,
  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at
) values (
  '065a7328-13e0-496f-8aeb-0c8ba45c04d9',
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
  '5ba46f67-0322-4115-8053-b9c6c85b5c99',
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
  'fa6836b1-9298-4a56-9e99-f8485b8feab9',
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
  '9317f6dd-1717-439c-a3e0-06fd4298cc5c',
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
  '4f9a103f-0f64-47c6-b267-67733724bd5b',
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
  'e2932f78-240d-4113-95f3-4f7715176114',
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
  '092f0df2-a0c6-46cf-a78d-b9ee1dfd2fac',
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
  'e84f82e3-9685-40f2-899a-12cc66c6ab4d',
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
  'ec99973d-47d8-4934-a056-d52a23480d03',
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
  '37f7937a-a250-4b2a-83af-57a2ecdb0630',
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
  '2c1ed781-cdbf-40c5-bd45-67742a67d46e',
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
  'e539abf7-773a-41ab-8384-c949599621a0',
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
  '54b25c96-1d72-44cf-953f-5b9e59d8c382',
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
  '1bcde291-5b76-4ad1-bcd9-69b4d5777a96',
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
  'c5fdd89e-37b5-4924-8f8d-899c737c054b',
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
  '45f11aa3-96ab-4bc5-aa3d-826423014c68',
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
  '8335ffc7-e392-4e4c-a112-b7dbf309b00c',
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
  '49281df0-5a09-4718-8b55-68f8ae1a6cc3',
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
  '254f0d16-7c9a-4564-abd1-f314720a63fc',
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
  'c3039b06-0438-483a-94b8-b8f180693112',
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
  '95298b6a-0ef1-4e36-80f2-344ef2972302',
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
  '0280f844-e336-4bfa-ab4f-89a314deb9be',
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
  'e116f3e5-ff52-4105-b8f0-4eb98892fcac',
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
  'e1c4a4e7-ec40-4dd5-8819-19a3c4269824',
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
  '21c68bd1-46af-4222-98ae-a594ce5e3b23',
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
  'fc447e10-5e30-49ea-88e5-f83f8535899e',
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
  'b0d7773d-b73f-4176-87fa-755bf4840728',
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
  'eec9af14-0ada-4f66-901e-a7eb5d0d66ef',
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
  '05866792-9131-4191-a762-1eeb1c7ced31',
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
  'a9545e24-3f4d-4cd9-9dce-66331d61e9b5',
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
  '856f8401-6358-42ab-98c2-7947f411f0d6',
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
  'd8e78b93-7870-44e8-b690-ce2f923db3a9',
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
  'fec60774-e6a0-48b9-b748-2f29af6ed70c',
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
  '0150d17d-9ae5-4d29-840f-f969a7842d68',
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
  'b0da1a78-3693-46b3-b4d9-74524f7392ec',
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
  'dae98962-5361-427a-aa79-7bc2f09faf8d',
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
  '1589c79c-d528-46ff-99ab-fde1a4a1011f',
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
  'a4ddaf9e-757e-4b57-8b95-18cfca730d40',
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
  '1c878171-01c3-43fe-9583-d8c59630f3f3',
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
  '60ee8eb1-6f64-4a01-8b3d-9f7d81598866',
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
  '053843db-2015-4d87-84ba-070330fc055b',
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
  '675e7896-dd01-4c50-b516-423c11d812b7',
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
  '2b476010-7999-45df-846f-4d674a982088',
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
  '99aad5a3-38dc-4b32-86ab-6d9a2a98e54b',
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
  '600b3e81-b8ca-499f-a379-80b640372ff1',
  'b1e13a21-98d6-4470-8b5a-2f37a3b40216',
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
  'c6bf1e47-7d0b-43f5-88e8-68c977e8b800',
  'b1e13a21-98d6-4470-8b5a-2f37a3b40216',
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
  '1c919e94-8769-4b8b-9611-620b8e33fd72',
  'bd95f6ab-4f9e-4b59-9168-9b30d5b88540',
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
  '1ed44a36-9e57-4ddd-82e9-c508a6b32afa',
  'bd95f6ab-4f9e-4b59-9168-9b30d5b88540',
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
  'e795a073-1026-4553-a0a4-d8f841216c17',
  '5d72579a-0a21-4a1d-9f3f-54e4c75f3f4e',
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
  '87eb9402-b3e1-47e6-a316-cff1026ebbf8',
  'b16db5c6-fa78-47d9-9d65-028f47b37b28',
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
  'e2d0956a-444e-4948-88d2-9fbb24a9a359',
  'b16db5c6-fa78-47d9-9d65-028f47b37b28',
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
  '23d6529b-1f6a-4ee6-8ad9-65308a53e0a1',
  'bd95f6ab-4f9e-4b59-9168-9b30d5b88540',
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
  '3ebf1128-68a5-4260-9d5b-207f14bda726',
  '0aaa237e-d2b0-4b5e-a518-eb73bb2ee634',
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
  'f108a04a-e127-4cc4-a7db-7ae41b2c6ea8',
  'e0774559-ae10-455f-912d-ef562f234fb8',
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
  'ad662a7f-c1bc-4d20-8be0-08cb88fd15d5',
  '06d2372f-9317-44ac-a020-e6e835a1cd65',
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
  '755a858d-c58a-45c3-a7ba-5e1b2b0a42b6',
  'fa4e49cc-f7fb-448e-83e3-08d10e7c1965',
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
  '2b51263b-a77b-4088-a23a-ee12f2d7409d',
  '062a59ac-b3cb-4fab-aa0b-9cf6193274a9',
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
  '2a767a20-95cb-417f-886e-1e80667e1e7f',
  'de91c798-37a3-4b7b-8def-6e08076ffbdb',
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
  '7d079890-9239-4fb1-8e0d-4be8e2812455',
  'e595fed1-da22-45ea-bfa7-02488a2ad292',
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
  '229b0abf-f8c5-41d5-b4f3-114a4421d086',
  '417116b0-68ec-44b5-ba8c-a8f1e3712ff5',
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
  '38460524-aaab-4a7a-8221-62bb8a5380f6',
  '6fb32f31-9471-4b48-8e1f-3d4ac242203b',
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
  '0e490192-cbd1-4413-8757-0c80a0330950',
  '3a5097a3-2059-4e61-b0b0-32c1d20d188d',
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
  'd5f8019e-1a8b-4acd-8346-18e31bd548a1',
  '3a5097a3-2059-4e61-b0b0-32c1d20d188d',
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
  '69215cb7-c25c-427f-bcbc-229e1aebbab1',
  'b1e13a21-98d6-4470-8b5a-2f37a3b40216',
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
  'fab97efd-cd48-46ae-ab73-09213cf3b04c',
  '9fcc8fd2-c644-4652-825b-57f33ca376fc',
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
  '104c2995-e512-415a-9057-3f452e94caeb',
  '22ea5784-126b-4281-af44-8e57bd5cbdee',
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
  '76c208c0-8d5f-40a3-88af-3278d7b747db',
  '6c94782f-9c61-40de-b9b2-41cc06aab2a1',
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
  '80df5097-806d-4df3-9272-e197014d80a5',
  '4993d2b1-abe6-496a-8733-ffcb5a939521',
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
  '08c57bd5-e362-4e50-b9fc-a66f972f2a6b',
  '0888989a-3330-4f26-aebb-2d6cb4a34a2c',
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
  '7a815eb7-c77f-45a3-b528-70863101fc05',
  'd53b256c-506d-4257-b365-1a6cf146db47',
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
  '0a28598a-4611-4d37-80cb-44befc45d891',
  'a36c232b-8a8b-479c-a4b8-fc9c97d7ad22',
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
  '0d08c961-562d-4b3d-84d5-af4013f8f983',
  'be2b9d44-f2c8-4af0-9dca-7f009d16e748',
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
  'a64839d8-e7bb-47b2-b257-30884814796d',
  'e9f31f36-e7a0-4ea8-a8f3-115af9daadf6',
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
  '093a80a7-f7b1-478b-bea0-cb675ab9f759',
  '19d827d9-da44-4c1f-9aac-487b9603df25',
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
  '5f7b5de7-1523-41cc-85c5-4943c71409c7',
  '256b28bf-4564-4e08-bf02-a10e3049b5c7',
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
  '0380d5ef-b7c2-4942-bc4e-60c9b270a3f5',
  'ff20fd91-a423-4c80-a5fe-0469fc4820a2',
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
  'bb8ef938-5a66-46f1-a4f2-e7892057faf1',
  '9dddae21-4cbe-44bc-a7f1-70b21ab61787',
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
  '4b1c6dfb-d7b9-4f66-8544-af11e8b6a771',
  'e313c1a5-acdd-4b91-849b-4edccacea4b9',
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
  'd35ff146-cb15-4d39-aa67-6f3d4e231977',
  '2870edf8-aaef-48d1-9138-4e3277140101',
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
  'edb86198-0f62-448d-8a36-7f996542e3e4',
  'a3ecf596-e7cb-411a-9fe3-9d75bcf17da4',
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
  '5aca3fd7-e7c5-49c1-b20d-7cccef4e08f7',
  '8db56218-b81b-4992-9233-9c938acb97eb',
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
  '60419e4b-d7d4-4882-a759-636a01a031c4',
  '8db56218-b81b-4992-9233-9c938acb97eb',
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
  'e9e1dd71-af83-4eff-86b3-0cb48ccd76df',
  'a6f1f38c-5eed-4f49-8fc7-b32a2d8bccb3',
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
  'ee6ebee1-d28d-4ec3-9e89-5aa427698aa5',
  '3fcef271-f36f-4954-918a-9d1a337642cc',
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
  'b149b522-5f03-4d80-931b-0dbd841166e3',
  '3fcef271-f36f-4954-918a-9d1a337642cc',
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
  'e170b38a-e65a-47e2-a440-0217b5a66602',
  'fd2d8e34-71a5-4ce4-9773-a2f691e15db4',
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
  '72197692-2e25-4ac0-8192-82d2c8d2bc6a',
  'fd2d8e34-71a5-4ce4-9773-a2f691e15db4',
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
  'bffe267c-2cbf-4873-81ab-d5c1e4125d73',
  'e313c1a5-acdd-4b91-849b-4edccacea4b9',
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
  '38233563-3ddc-40d4-b99a-741e3085eed7',
  '4e2ce85a-446b-45e7-99ef-7ffcaf3a4fff',
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
  '4a14e7d5-d9bd-444c-a013-ca1a7da43a10',
  '20551468-5ef7-4a4d-a163-ab05254bbfd8',
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
  '66c32496-fd36-49a2-a783-7c980bf792a1',
  '6e46e2b7-ba56-4d5e-b12b-9322024cff38',
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
  '8060259f-7194-4855-bf5b-72fa6450da67',
  '6e46e2b7-ba56-4d5e-b12b-9322024cff38',
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
  'be42d2d6-8390-4a2f-82c9-1df947788390',
  'e313c1a5-acdd-4b91-849b-4edccacea4b9',
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
  '7cc32071-b156-412c-961e-dd90980fa8cd',
  '8c75e9e7-82dd-493e-a48d-797a758eea75',
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
  '9c854286-272b-4c25-b115-24c828a2b7a9',
  'edef3162-1e8d-4fba-af70-19af67fedb5f',
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
  '52a64ee5-21b7-4e77-9a54-cc267b5273e1',
  'edef3162-1e8d-4fba-af70-19af67fedb5f',
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
  '921b2e5a-62de-48a1-bd8a-ad9d45413204',
  'e313c1a5-acdd-4b91-849b-4edccacea4b9',
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
  '46bcb74d-1eaf-46a9-a8e8-17435b546ea6',
  '6162d011-474a-4375-bc57-4999e7185c4b',
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
  '92a2a8a1-3e8b-4c0f-9ad3-1636879a6f55',
  '6162d011-474a-4375-bc57-4999e7185c4b',
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
  '8ee5b7da-a0b8-4449-9f39-572cd374ffbe',
  'e313c1a5-acdd-4b91-849b-4edccacea4b9',
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
  '70e8b82f-be99-44aa-bce8-675c803a7d4b',
  'bf0aeddc-5d02-418f-ae00-0c6fa5a67ec9',
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
  'c40a2839-5191-448d-b8ce-df15addabec9',
  'afca0801-1753-4558-b076-42d89a3b1eb2',
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
  'aeb1de52-2325-44f5-a273-ced69d169d87',
  '620ccf58-1e78-4c45-a9d5-1cef5c09a44d',
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
  'c53d4595-fa5b-4b1e-bd39-d0e1c7ec73d9',
  '50f4a066-a960-4f69-8745-d1fc54b0aa1b',
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
  '2d3dcf5b-5afd-4633-93bd-262a0704af43',
  '50f4a066-a960-4f69-8745-d1fc54b0aa1b',
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
  '4032cf7c-811f-4615-ae66-2737fa379cf3',
  '00caeb45-86ba-4300-985f-27754627d0f1',
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
  '7d7e38e7-ffb5-4b4a-a425-6f3afd6c0bfe',
  '28ae1fdd-303c-41b3-821f-ad35440c4a90',
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
  'f288e967-2e38-4486-b6ff-560f89040466',
  'fd36ffa5-78e1-46b7-a1e5-3911e0aa7007',
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
  '504de774-7e13-403b-99ab-3845654be187',
  'a23ef273-a14f-4d39-bd1b-fb0de9f514c4',
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
  '5a0ebe85-98e9-4fb7-af44-263b7aca6443',
  '646bf7a4-8d22-49b7-84cd-7fade0bb477e',
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
  '5b904ea3-d786-4e1d-bef1-9e813a697686',
  '84ce20b3-03ef-4f84-87fa-f354f2831d9f',
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
  '5e16fdbf-bbfd-4421-bf24-7cdb1fe242c4',
  'b97b6dea-6f6a-47b1-a617-35740fe575f8',
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
  'f388ee2d-f089-47cf-bed0-f22d1bade4e5',
  'e54bf9b2-22af-4705-a1df-355937d70d58',
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
  '9b26d825-09cf-494e-863d-ddc38e1f1987',
  '2e8bf753-0a3f-4ea3-bc74-ed43389c4d62',
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
  'e71d79bd-f480-48cd-9f5a-7734b8512713',
  '2e8bf753-0a3f-4ea3-bc74-ed43389c4d62',
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
  '23f9cefc-7b42-4a74-b474-8595adc5c86d',
  'a3ecf596-e7cb-411a-9fe3-9d75bcf17da4',
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
  '546b12b2-420c-419e-8102-efa5fb53cc2e',
  '75a6e29e-e781-408d-b6bf-768a34d777aa',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  141.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:12:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:12:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '42d2f600-df69-4551-b33a-e4a332c4eee3',
  'f7d4c2f0-2e4a-466e-b0a2-d98a65305d17',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  26.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:13:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:13:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '4160d00a-dc38-40f1-9fcd-e3b6ee3c46e5',
  'f7d4c2f0-2e4a-466e-b0a2-d98a65305d17',
  date '2026-06-10',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('PARIÑAS'),
  1300.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "6054"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:14:00-05'::timestamptz,
  '6054',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:14:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '75f6f60e-3040-4600-824f-d191cd63455e',
  '61f2c480-7c9c-4390-a7bc-55de920cd0b0',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  120.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  'cda408ca-9ac8-471d-ab3d-b11ba61dcf02',
  'b0cd1a95-4bca-48b9-829b-930bdb2d9330',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  16.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  'cc8f60f7-6a5f-448b-b7b8-c85f919d654a',
  '1d88a920-a960-4d36-bf56-b74de4561081',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  164.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:17:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:17:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '004fc60e-050f-4ebc-8e24-724c544587b2',
  'c0b97c19-63b5-4f35-9f58-1b1462d1d0bf',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  2.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:18:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:18:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '63b8f92f-b4ce-444a-9067-91ddfc671b46',
  'c0b97c19-63b5-4f35-9f58-1b1462d1d0bf',
  date '2026-06-10',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  200.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "6053"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:19:00-05'::timestamptz,
  '6053',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:19:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '6a739c1d-e25b-43e7-bd11-177023e27551',
  '114de2fb-fac0-4318-bb5a-58f26dbf6548',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('DONALD ROBIN'),
  public.resolve_unidad_id('DONALD ROBIN'),
  85.0,
  '{"origen_texto": "DONALD ROBIN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '435a3b0d-fc63-4618-8643-f5a681fc52a4',
  '50f74a56-fb19-4fc1-8a6e-d6188c17e8fd',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  49.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:21:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:21:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '2d5389ba-93e0-40cc-9eaf-d28c995f0c3b',
  '50f74a56-fb19-4fc1-8a6e-d6188c17e8fd',
  date '2026-06-10',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('SHEILA R'),
  200.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "5795"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:22:00-05'::timestamptz,
  '5795',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:22:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '2c764ca2-71b5-4d2a-8bad-a1607b747329',
  '19aaac86-2294-4b1b-a2b3-799fff738eb2',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  47.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:23:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:23:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '44524af6-a931-44b5-8b75-3b2728c43a9f',
  'f3a06f67-9cbc-4e43-af50-68adcef76249',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  47.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '608c6665-13bc-4de8-adfb-62c2e740162d',
  'fbdca30f-b832-4fda-86d1-3fe3dca3ce59',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  46.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:25:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:25:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'da7867eb-153e-4544-9e76-457755803cc7',
  '6e70728f-8cf2-4954-94d7-01cb79db1874',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROSLYN'),
  public.resolve_unidad_id('ROSLYN'),
  50.0,
  '{"origen_texto": "ROSLYN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:26:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:26:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '885e7157-1e4f-4c4a-8eb3-d0fba3805e6e',
  '4adf80ad-d725-4252-9454-e598aa770016',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  75.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  'c5235bbc-0fff-49ce-b1c0-614eda776bb8',
  '27b78d71-d29e-47d7-b174-354dbc5f459b',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  74.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '5fc7a7f9-4819-4e5e-903f-d8d80f3659b6',
  '02e7d8ed-2223-4d1e-ac1c-857e284a47af',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  29.0,
  '{"origen_texto": "BUCKLEY EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '2de8f482-9b5c-4cba-98ca-ecfec26c1733',
  '02e7d8ed-2223-4d1e-ac1c-857e284a47af',
  date '2026-06-10',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  100.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "6052"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:30:00-05'::timestamptz,
  '6052',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:30:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b118332f-66ee-49f8-a1f6-1cf5cd85d41b',
  '46284417-a7ad-440d-bb92-922d87f7c24d',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  5.0,
  '{"origen_texto": "BUCKLEY EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  'dff8e9e0-47e1-4b59-b040-d2617dbd9ed7',
  '8b43d1a0-6cbc-42d1-8c13-ee8dfcdd1def',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  50.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '12a8768a-65f6-40ad-b3c6-95ba1fce15ca',
  'a31f8a9d-9388-489d-9ec2-a30ce748c36e',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  20.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:33:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:33:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1b6c4ab2-dce0-4ffb-b427-dc965fe07eff',
  '58d08cf9-cd81-4c77-89b3-0afa998c703a',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  32.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:34:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:34:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3352724f-afde-47e7-af6c-4c6922b17f50',
  '93c4501d-fdc7-436d-9574-0b0febcb8a33',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  18.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:35:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:35:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '6f4bdd2f-a82f-489f-b621-0d7ea1dcaadd',
  '674d951a-bf1f-41dd-be2d-ec6081789e82',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:36:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:36:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '64eba1e8-64a6-478f-9f68-89f29a55780f',
  'c34ea56c-6a8a-40f6-8575-7a660b013c7c',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:37:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:37:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0ef0dd60-7e33-4178-8074-d9e94bce7cb1',
  '33542bb7-591c-46d9-8005-1f1ba5ef1fc0',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  41.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:38:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:38:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b8a5f1a9-cec3-4161-a2cf-22943bb39ea2',
  '687b4025-de6c-4666-a23e-8be9995aecd5',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  43.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:39:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:39:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'bd96aa2d-e6f0-4e7d-b6cc-4c754eb8f333',
  'ef2031a9-2d67-49e8-9cfb-60c1067c26a0',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  113.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:40:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:40:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '12b07bca-3d15-499d-b6e0-ebbda5784838',
  'ef2031a9-2d67-49e8-9cfb-60c1067c26a0',
  date '2026-06-10',
  'diurno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('MR BOB'),
  800.0,
  '{"origen_texto": "TALARA", "n_vale": "5759"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:41:00-05'::timestamptz,
  '5759',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:41:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e046cadd-98b8-4915-a7fb-5acbe7cbcb2c',
  '61f2c480-7c9c-4390-a7bc-55de920cd0b0',
  date '2026-06-10',
  'diurno',
  'transferencia',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('MR BOB'),
  800.0,
  '{"destino_texto": "MR BOB", "n_vale": "5759"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:41:00-05'::timestamptz,
  '5759',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:41:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'f6aec6e1-51cc-4baa-953e-b1da86392f8e',
  'e6fc9629-f6ba-4e1e-b5d0-1e70e8d5ad08',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  45.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:43:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:43:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '2c63a256-e980-496d-b77b-abbbe598b5b1',
  '478328cc-4984-4018-85ed-7cf5742d7a73',
  date '2026-06-10',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  102.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:44:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:44:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1322a030-2601-4d0d-84d8-3cfd1805da03',
  '478328cc-4984-4018-85ed-7cf5742d7a73',
  date '2026-06-10',
  'diurno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('LJ KELLEY'),
  150.0,
  '{"origen_texto": "TALARA", "n_vale": "5760"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:45:00-05'::timestamptz,
  '5760',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:45:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '03dcc5b5-3d20-4272-83df-cbc820c53ed8',
  '61f2c480-7c9c-4390-a7bc-55de920cd0b0',
  date '2026-06-10',
  'diurno',
  'despacho',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('LJ KELLEY'),
  150.0,
  '{"destino_texto": "LJ KELLEY", "n_vale": "5760"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:45:00-05'::timestamptz,
  '5760',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 09:45:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e2db4ff5-8143-4fb5-bdf7-e3b1528cd96e',
  '97b81dd1-bea4-4620-aff3-9089c6aad0b2',
  date '2026-06-10',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  55.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:47:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-10 21:47:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd27a46af-355f-4c21-9281-c6ff0bf126da',
  'bd94da26-452e-4e58-b2ab-41bdf5ebdddf',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  157.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 09:48:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 09:48:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0216b6b5-60ce-41af-8e08-e563aed284aa',
  '51f9df65-1439-4a73-9c07-6c423bc6b1cd',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  27.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:49:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:49:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '953689c9-5744-4a72-a66b-8f7fb5578242',
  '51f9df65-1439-4a73-9c07-6c423bc6b1cd',
  date '2026-06-11',
  'nocturno',
  'recibido',
  NULL,
  public.resolve_unidad_id('PARIÑAS'),
  5960.0,
  '{"origen_texto": "AMARRADERO #4 PP", "n_vale": "6104"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:50:00-05'::timestamptz,
  '6104',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:50:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '302d985a-6238-4bbe-9aba-3a09713798e3',
  '004ca935-ce61-48ac-952a-ad8f38f1c678',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  142.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 09:51:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 09:51:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c4208432-3458-42e4-bf4c-c09b4e70b86c',
  '469fd2e4-4449-4405-8c7c-ddccc1277b67',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  44.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:52:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:52:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'a3e3a25a-67ff-4437-ae1a-360b26889928',
  '469fd2e4-4449-4405-8c7c-ddccc1277b67',
  date '2026-06-11',
  'nocturno',
  'recibido',
  NULL,
  public.resolve_unidad_id('TALARA'),
  10514.0,
  '{"origen_texto": "AMARRADERO #4 PP", "n_vale": "5761"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:53:00-05'::timestamptz,
  '5761',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:53:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '21d1e313-ad0c-4a2b-a43a-d42ae926d29b',
  'f2f699a5-bb3b-4f8f-8387-e14b00fc641d',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  125.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '600111f2-46f3-443b-a8cf-c8203ec61df9',
  '7d67b72a-d75e-4177-b04e-ee76ef74c720',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  104.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '848f186d-0380-46fa-8f5f-9cf84323c6ec',
  '7d67b72a-d75e-4177-b04e-ee76ef74c720',
  date '2026-06-11',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  250.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "6105"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:56:00-05'::timestamptz,
  '6105',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:56:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '55cccc60-ac6f-4f2d-96b9-0f5cee965800',
  '51f9df65-1439-4a73-9c07-6c423bc6b1cd',
  date '2026-06-11',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  250.0,
  '{"destino_texto": "OLYMPIC EXPRESS", "n_vale": "6105"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:56:00-05'::timestamptz,
  '6105',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 21:56:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '2c996333-4708-4d9d-b44c-5991d79190bb',
  '5f2db688-8d67-46e3-9f1a-12bb19fabbdf',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('DONALD ROBIN'),
  public.resolve_unidad_id('DONALD ROBIN'),
  82.0,
  '{"origen_texto": "DONALD ROBIN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 09:58:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 09:58:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'fa14d5d8-3bb8-4378-954e-b7d0b63a9505',
  '5f2db688-8d67-46e3-9f1a-12bb19fabbdf',
  date '2026-06-11',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('DONALD ROBIN'),
  150.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "5793"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 09:59:00-05'::timestamptz,
  '5793',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 09:59:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '168efc5c-5359-44b0-b98a-d595f862c1e1',
  'bd94da26-452e-4e58-b2ab-41bdf5ebdddf',
  date '2026-06-11',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('DONALD ROBIN'),
  150.0,
  '{"destino_texto": "DONALD ROBIN", "n_vale": "5793"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 09:59:00-05'::timestamptz,
  '5793',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 09:59:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '5cdb7663-3b39-4dc4-9e3f-0b2600d1a148',
  'faa28a7b-45ee-44de-9014-2155afb0a283',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  46.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:01:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:01:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3c4995d7-cef5-4154-b7ff-81f2c464eeea',
  '562eb015-343f-4431-8e64-3e04ba2c6b6d',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  47.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:02:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:02:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '470ee4bc-af77-4fca-ae50-704615eefc09',
  'a69caf12-f0de-41a6-940b-b800b991c0f7',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  43.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:03:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:03:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0ff6826e-e921-4dfd-9399-c67a87254ad4',
  'a69caf12-f0de-41a6-940b-b800b991c0f7',
  date '2026-06-11',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('IRIS'),
  100.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "6102"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:04:00-05'::timestamptz,
  '6102',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:04:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '63810367-590a-4524-bd8b-1dae266e813e',
  'bd94da26-452e-4e58-b2ab-41bdf5ebdddf',
  date '2026-06-11',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('IRIS'),
  100.0,
  '{"destino_texto": "IRIS", "n_vale": "6102"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:04:00-05'::timestamptz,
  '6102',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:04:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b4104cd9-e2f0-4711-88f6-a7513ad62f9b',
  'dd01fb04-beb6-434f-b11e-995a5f51975a',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  47.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:06:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:06:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'f1ebebd9-8603-42e1-8c09-db5a47e9605b',
  'aa42a7ad-0d27-403a-89b1-a3b7d3936633',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROSLYN'),
  public.resolve_unidad_id('ROSLYN'),
  55.0,
  '{"origen_texto": "ROSLYN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  'b128a8e1-90e7-4682-bb36-e653e6de4184',
  'aa42a7ad-0d27-403a-89b1-a3b7d3936633',
  date '2026-06-11',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('ROSLYN'),
  150.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "6103"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:08:00-05'::timestamptz,
  '6103',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:08:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '724aa863-7b95-42c3-9f7a-abdd7e28b852',
  'bd94da26-452e-4e58-b2ab-41bdf5ebdddf',
  date '2026-06-11',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('ROSLYN'),
  150.0,
  '{"destino_texto": "ROSLYN", "n_vale": "6103"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:08:00-05'::timestamptz,
  '6103',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:08:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '9f6c9c3e-3e86-4d3d-b7cc-a340b2db92c6',
  '27f69f5f-ccd1-480f-ada1-2f9506ec6765',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  82.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:10:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:10:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'bce6a38d-0160-4046-a086-b27c0324b7be',
  '27f69f5f-ccd1-480f-ada1-2f9506ec6765',
  date '2026-06-11',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('CHIP II'),
  250.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "5792"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:11:00-05'::timestamptz,
  '5792',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:11:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c5604aed-a7de-4da3-b355-011889e609ae',
  'bd94da26-452e-4e58-b2ab-41bdf5ebdddf',
  date '2026-06-11',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('CHIP II'),
  250.0,
  '{"destino_texto": "CHIP II", "n_vale": "5792"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:11:00-05'::timestamptz,
  '5792',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:11:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e4dc529c-92ec-4532-bae5-7162366ac2e5',
  '2ed20103-57db-480b-a051-56e9a0ea4ae7',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  52.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:13:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:13:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'ab4af6d4-3d3a-4875-9e1d-6a10a8417c4e',
  '3becb090-9175-44d5-821d-4b45cc670188',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  23.0,
  '{"origen_texto": "BUCKLEY EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:14:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:14:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '5c2ce5b9-d503-4638-9fd8-c3aff72be9ec',
  '39a656b1-507b-4255-a302-efeed6f592b0',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  50.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:15:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:15:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '074fcb6e-feef-4fd4-8c69-91497a7a9076',
  '52186a33-bf2c-4c0b-9653-febdc147fa54',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  10.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:16:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:16:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '133086f2-f9ed-4a77-948a-661916d03295',
  '52186a33-bf2c-4c0b-9653-febdc147fa54',
  date '2026-06-11',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('CABO BLANCO'),
  200.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "6056"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:17:00-05'::timestamptz,
  '6056',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:17:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c72d9569-eccc-4372-bc9d-300a4997f2e8',
  '59ab0ceb-d52b-4eaa-aa21-e2583d1fa848',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  32.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:18:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:18:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '726ec749-0703-4211-bfad-2c3db61cc066',
  '01d78bf6-3702-45f8-a9ef-93db9176ca16',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  18.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  'a642ee37-4d94-44d0-9c53-95072c9a0990',
  '98439dc0-a0b1-4a43-8e63-fa46ba045fc5',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '416ea078-71f0-4bf7-8652-78636a1634de',
  'f2f26424-cc42-41af-a496-abd56c5b4961',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:21:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:21:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '2f68acf9-d649-4a5b-9b91-f13d3b60c796',
  '6851551d-2a8d-4eab-bbc2-b5062a46131d',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  39.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:22:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:22:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '8c79b92f-5ebe-48da-b2ae-3e35eb345ec7',
  '6851551d-2a8d-4eab-bbc2-b5062a46131d',
  date '2026-06-11',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('ROGUE'),
  500.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "6101"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:23:00-05'::timestamptz,
  '6101',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:23:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b937ca5a-c001-40c6-8f17-d23f569c914e',
  'bd94da26-452e-4e58-b2ab-41bdf5ebdddf',
  date '2026-06-11',
  'diurno',
  'transferencia',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('ROGUE'),
  500.0,
  '{"destino_texto": "ROGUE", "n_vale": "6101"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:23:00-05'::timestamptz,
  '6101',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:23:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b0d42854-44a5-444a-993e-81501639231b',
  '852ac5c3-4e58-4ad8-bdbb-99a3e9790f85',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  53.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '45925f62-1a24-48ef-8423-e11998fe02fd',
  '16998cf6-42ad-4e61-b6ea-ccfbc5e0aeb8',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  134.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '110d846e-c7c0-4deb-9dd0-7b9cba05f3c5',
  '509ffee5-0243-443c-8903-36795fdd4bb4',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  45.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '779585b1-7b74-4733-a7f9-722cadf7549a',
  'c21ca8c8-1178-4b12-9cdb-124a8e98ecd1',
  date '2026-06-11',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  95.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  'c738b2e0-1474-4ee7-9b6f-ef0ee48d9ebc',
  'c21ca8c8-1178-4b12-9cdb-124a8e98ecd1',
  date '2026-06-11',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LJ KELLEY'),
  150.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "6055"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:29:00-05'::timestamptz,
  '6055',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 10:29:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'de1cc1a6-7bb6-4f51-bfd4-6918be620d2d',
  'ab613d75-3fd0-4f41-b6ea-ebf1d5e6af80',
  date '2026-06-11',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  55.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:30:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-11 22:30:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1a04addf-969f-4c14-8843-e820fd1e969e',
  '065a7328-13e0-496f-8aeb-0c8ba45c04d9',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  195.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:31:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:31:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '5bad60a1-a27a-4071-8dde-17a9b3e3b287',
  '5ba46f67-0322-4115-8053-b9c6c85b5c99',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  55.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:32:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:32:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd26f9b44-2cd1-46ab-bd90-b93cb1897ccc',
  '5ba46f67-0322-4115-8053-b9c6c85b5c99',
  date '2026-06-12',
  'nocturno',
  'recibido',
  NULL,
  public.resolve_unidad_id('PARIÑAS'),
  6214.0,
  '{"origen_texto": "AMARRADERO #4 PP", "n_vale": "6107"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:33:00-05'::timestamptz,
  '6107',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:33:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '78791b33-fa55-4756-b8ae-768e5bcbf8c2',
  'ec99973d-47d8-4934-a056-d52a23480d03',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  114.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:34:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:34:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '74a7cc9f-2b9e-4dc1-83e4-2036ef3ad482',
  '37f7937a-a250-4b2a-83af-57a2ecdb0630',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  26.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:35:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:35:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '26ba9dfb-70d2-45b0-8429-ec8aba17446e',
  '37f7937a-a250-4b2a-83af-57a2ecdb0630',
  date '2026-06-12',
  'nocturno',
  'recibido',
  NULL,
  public.resolve_unidad_id('TALARA'),
  3330.0,
  '{"origen_texto": "AMARRADERO #4 PP", "n_vale": "5766"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:36:00-05'::timestamptz,
  '5766',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:36:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '439e422e-b3d6-46e2-b25c-973f7e443c3c',
  '95c8ef1d-501a-4e3a-862b-4be99d0db479',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  183.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '2c82a666-047f-42cf-87e8-c0ba011daf84',
  '018c4edd-8dca-4005-a877-ede6cc15117d',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  17.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '0d857d26-9c35-4b6c-9961-f3c4f77dd933',
  '018c4edd-8dca-4005-a877-ede6cc15117d',
  date '2026-06-12',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  200.0,
  '{"origen_texto": "TALARA", "n_vale": "5765"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:39:00-05'::timestamptz,
  '5765',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:39:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0e0512c0-2091-4931-8c79-d13914e8bb91',
  '37f7937a-a250-4b2a-83af-57a2ecdb0630',
  date '2026-06-12',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  200.0,
  '{"destino_texto": "OLYMPIC EXPRESS", "n_vale": "5765"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:39:00-05'::timestamptz,
  '5765',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:39:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b6b0f77c-177e-4332-ad23-2a7c8fd952d7',
  '32fbfd49-a0e5-4e7f-a50a-61d30650ca52',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('DONALD ROBIN'),
  public.resolve_unidad_id('DONALD ROBIN'),
  93.0,
  '{"origen_texto": "DONALD ROBIN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:41:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:41:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '24d7d978-1662-40c7-9f34-85f7a212f940',
  '092f0df2-a0c6-46cf-a78d-b9ee1dfd2fac',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  67.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:42:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:42:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'afb4d576-6172-4e1e-a1e9-47b9f4b9b7d6',
  '092f0df2-a0c6-46cf-a78d-b9ee1dfd2fac',
  date '2026-06-12',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('SHEILA R'),
  200.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "6057"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:43:00-05'::timestamptz,
  '6057',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:43:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'f7061a6c-1efd-4470-89df-da90c21ca9dc',
  'e84f82e3-9685-40f2-899a-12cc66c6ab4d',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  51.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '37cb19ba-a09c-42b1-8c7f-51d96a5893f6',
  '68e4a4c3-b5a6-4ac6-8846-0ff9eb9b7e16',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  51.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:45:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:45:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '748332a2-214e-40b7-a12e-0a48c37dae8e',
  'cf10d477-e9a5-4a31-8829-39af507eb546',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  63.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:46:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:46:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '071dd017-7a27-4bdb-88df-d0f43ff4611b',
  '4f9a103f-0f64-47c6-b267-67733724bd5b',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROSLYN'),
  public.resolve_unidad_id('ROSLYN'),
  95.0,
  '{"origen_texto": "ROSLYN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  'd5e7f20d-7f74-4d2f-b43d-1b4c22e82218',
  '168f3b0a-c45b-45fa-9d00-15a6d826afd3',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  70.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '23bf9296-8196-427d-8c02-51dddc7ccc1b',
  'dea692a1-cae1-4ca7-944f-bdd6b492bf80',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  74.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:49:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:49:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'a968a822-35cf-4fa2-a891-66639eb286c3',
  '850e5cad-c8b4-411a-85c8-6520d73b7352',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  72.0,
  '{"origen_texto": "BUCKLEY EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:50:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:50:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '5f6968cd-dac9-4495-8fed-f96c84dadd0c',
  '3b4a16bc-fc03-4e9c-8aac-94b48c7639f6',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  60.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '361c8310-dffb-42ab-8cfb-f734e530115f',
  '76380824-d110-4563-8e91-8a2911484e02',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  5.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '2a968b61-8f7c-429a-af67-0e08fabc1f28',
  '02b241e7-d869-43f7-9099-2f9456deecfd',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  32.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '2dccfde5-e5ba-4d8e-9842-a7e6070bf5b6',
  '39c9d92c-797a-46c8-9b4a-43d3f97051c1',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  18.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:54:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:54:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '9466dc77-7296-4246-a15b-373c710758ba',
  'abef1fde-f867-488c-ae07-73c5ee4c6a4a',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:55:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 10:55:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '1d354b0c-045e-45a0-b6ec-b07c80913b01',
  'bf96c4e1-3f0c-499b-bd0a-1113ddcae99d',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:56:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 22:56:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '700b6b70-c0bb-4089-b48d-8570b1d292d9',
  'fa6836b1-9298-4a56-9e99-f8485b8feab9',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  43.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '1ee4bd3e-4c90-4059-9d27-19ddaa962c23',
  '9317f6dd-1717-439c-a3e0-06fd4298cc5c',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  43.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  'a472733d-ffc9-436f-a3b3-5fc897ce3f00',
  '6e719ea2-25ef-475a-be73-5fe9b2eba962',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  149.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '2f8d51cd-6af4-44e4-b409-42a3a833020a',
  '395900ec-b9e6-4c18-adfc-25b3b8741cc1',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  45.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '2aefdd65-446e-43aa-9c06-bdd31d50b3b4',
  '274a8279-d35e-4a50-ada8-08f01d50e5b0',
  date '2026-06-12',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  105.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '39c453fc-9258-4d69-95a7-12b9c9992f3b',
  '274a8279-d35e-4a50-ada8-08f01d50e5b0',
  date '2026-06-12',
  'diurno',
  'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  public.resolve_unidad_id('LJ KELLEY'),
  200.0,
  '{"origen_texto": "LOBITOS EXPRESS CARGA", "n_vale": "6059"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 11:02:00-05'::timestamptz,
  '6059',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 11:02:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c37f04ae-d4f2-4047-910d-90a24d4a3a76',
  '2a1dca8d-cfd0-4ba1-a081-93c089a0a8b3',
  date '2026-06-12',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  72.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:03:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-12 23:03:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '5b8babf7-de79-4454-9650-bc5c693dfd4f',
  'fec60774-e6a0-48b9-b748-2f29af6ed70c',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  16.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:04:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:04:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '0e6306a3-4e14-486a-9412-f7267a2fa558',
  '0150d17d-9ae5-4d29-840f-f969a7842d68',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('PARIÑAS'),
  16.0,
  '{"origen_texto": "PARIÑAS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:05:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:05:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e37699b5-169a-479c-bc65-8276faace456',
  '053843db-2015-4d87-84ba-070330fc055b',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  168.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:06:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:06:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '9bb49a4b-2a00-4185-b5ca-34b3651e935a',
  '675e7896-dd01-4c50-b516-423c11d812b7',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('TALARA'),
  20.0,
  '{"origen_texto": "TALARA", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:07:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:07:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '7bb41b62-0119-4b6a-a2aa-ca8921cd24a5',
  '05866792-9131-4191-a762-1eeb1c7ced31',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  73.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:08:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:08:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '7b6649e3-94db-4416-b530-7bb6bf511c14',
  'a9545e24-3f4d-4cd9-9dce-66331d61e9b5',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  public.resolve_unidad_id('OLYMPIC EXPRESS'),
  12.0,
  '{"origen_texto": "OLYMPIC EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:09:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:09:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '95364838-b5d3-430e-a169-0408c352d07b',
  '254f0d16-7c9a-4564-abd1-f314720a63fc',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('DONALD ROBIN'),
  public.resolve_unidad_id('DONALD ROBIN'),
  90.0,
  '{"origen_texto": "DONALD ROBIN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:10:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:10:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e9891334-a9ef-4afb-ae43-20437ceadec2',
  '254f0d16-7c9a-4564-abd1-f314720a63fc',
  date '2026-06-13',
  'diurno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('DONALD ROBIN'),
  150.0,
  '{"origen_texto": "TALARA", "n_vale": "5768"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:11:00-05'::timestamptz,
  '5768',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:11:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c196c741-1c2b-4ab5-b37a-8738652596fa',
  '053843db-2015-4d87-84ba-070330fc055b',
  date '2026-06-13',
  'diurno',
  'despacho',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('DONALD ROBIN'),
  150.0,
  '{"destino_texto": "DONALD ROBIN", "n_vale": "5768"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:11:00-05'::timestamptz,
  '5768',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:11:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'e781f8c5-95fb-4563-876b-2e264e683781',
  '1c878171-01c3-43fe-9583-d8c59630f3f3',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  41.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:13:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:13:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '3d7e37f0-9053-45c0-a192-1020d7a987ac',
  '60ee8eb1-6f64-4a01-8b3d-9f7d81598866',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('SHEILA R'),
  public.resolve_unidad_id('SHEILA R'),
  36.0,
  '{"origen_texto": "SHEILA R", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:14:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:14:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'a881814f-be65-4f6f-8779-f5d355046c18',
  'e116f3e5-ff52-4105-b8f0-4eb98892fcac',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  35.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:15:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:15:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'a3f68d86-1cf6-4ef1-a86a-901870725bbe',
  'e116f3e5-ff52-4105-b8f0-4eb98892fcac',
  date '2026-06-13',
  'diurno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('IRIS'),
  200.0,
  '{"origen_texto": "TALARA", "n_vale": "5771"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:16:00-05'::timestamptz,
  '5771',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:16:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '9da10e4e-bc00-4e19-b2fa-a7abf292b28b',
  '053843db-2015-4d87-84ba-070330fc055b',
  date '2026-06-13',
  'diurno',
  'despacho',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('IRIS'),
  200.0,
  '{"destino_texto": "IRIS", "n_vale": "5771"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:16:00-05'::timestamptz,
  '5771',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:16:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '141112ed-2393-4fc2-9b9d-6e541d1a52aa',
  'e1c4a4e7-ec40-4dd5-8819-19a3c4269824',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('IRIS'),
  public.resolve_unidad_id('IRIS'),
  51.0,
  '{"origen_texto": "IRIS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:18:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:18:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '7b79134b-897d-4841-8dfd-66b660f2e566',
  '1589c79c-d528-46ff-99ab-fde1a4a1011f',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROSLYN'),
  public.resolve_unidad_id('ROSLYN'),
  75.0,
  '{"origen_texto": "ROSLYN", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:19:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:19:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '31770898-2f2c-46ea-a713-837fee7702b9',
  '1589c79c-d528-46ff-99ab-fde1a4a1011f',
  date '2026-06-13',
  'diurno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('ROSLYN'),
  150.0,
  '{"origen_texto": "TALARA", "n_vale": "5768"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:20:00-05'::timestamptz,
  '5768',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:20:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '7799ed43-55c4-4001-ab01-cedafec3604b',
  '053843db-2015-4d87-84ba-070330fc055b',
  date '2026-06-13',
  'diurno',
  'despacho',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('ROSLYN'),
  150.0,
  '{"destino_texto": "ROSLYN", "n_vale": "5768"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:20:00-05'::timestamptz,
  '5768',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:20:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c48ad9e2-14a4-4c00-949f-3b78ef309b23',
  '8335ffc7-e392-4e4c-a112-b7dbf309b00c',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  72.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '0a5a5d8b-2cfd-4dc7-8682-2930f4d3125e',
  '8335ffc7-e392-4e4c-a112-b7dbf309b00c',
  date '2026-06-13',
  'diurno',
  'recibido',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('CHIP II'),
  300.0,
  '{"origen_texto": "TALARA", "n_vale": "5767"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:23:00-05'::timestamptz,
  '5767',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:23:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'b258f8d3-9a16-4e48-924a-5e4db6309768',
  '053843db-2015-4d87-84ba-070330fc055b',
  date '2026-06-13',
  'diurno',
  'despacho',
  public.resolve_unidad_id('TALARA'),
  public.resolve_unidad_id('CHIP II'),
  300.0,
  '{"destino_texto": "CHIP II", "n_vale": "5767"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:23:00-05'::timestamptz,
  '5767',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:23:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '913150b9-e4db-48a9-822e-c5470c4035c6',
  '49281df0-5a09-4718-8b55-68f8ae1a6cc3',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CHIP II'),
  public.resolve_unidad_id('CHIP II'),
  93.0,
  '{"origen_texto": "CHIP II", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:25:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:25:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '6871311a-7824-49f6-824f-3dce3b800b3d',
  '54b25c96-1d72-44cf-953f-5b9e59d8c382',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  public.resolve_unidad_id('BUCKLEY EXPRESS'),
  28.0,
  '{"origen_texto": "BUCKLEY EXPRESS", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:26:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:26:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '9d31f061-bab4-44c1-8d5d-c1d35e1ffde0',
  'c5fdd89e-37b5-4924-8f8d-899c737c054b',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  100.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  'e3a0bcaa-bbb3-443d-ac53-ad3566efed98',
  '45f11aa3-96ab-4bc5-aa3d-826423014c68',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('CABO BLANCO'),
  public.resolve_unidad_id('CABO BLANCO'),
  5.0,
  '{"origen_texto": "CABO BLANCO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:28:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:28:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '827ebf6d-805f-4220-90b2-02292bf8c0aa',
  '45f11aa3-96ab-4bc5-aa3d-826423014c68',
  date '2026-06-13',
  'nocturno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('CABO BLANCO'),
  200.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "6109"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:29:00-05'::timestamptz,
  '6109',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:29:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '10263250-1f66-4952-8184-371053991e36',
  '0150d17d-9ae5-4d29-840f-f969a7842d68',
  date '2026-06-13',
  'nocturno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('CABO BLANCO'),
  200.0,
  '{"destino_texto": "CABO BLANCO", "n_vale": "6109"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:29:00-05'::timestamptz,
  '6109',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:29:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '8449af24-6592-42d4-a9f6-c35165337609',
  '0280f844-e336-4bfa-ab4f-89a314deb9be',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ELIZABETH'),
  public.resolve_unidad_id('ELIZABETH'),
  18.0,
  '{"origen_texto": "ELIZABETH", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:31:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:31:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'aaf0ece3-5061-46cd-8dc6-5c5f914deed6',
  '856f8401-6358-42ab-98c2-7947f411f0d6',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:32:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:32:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c3eb11df-6964-4ff1-8552-e4042864a788',
  'd8e78b93-7870-44e8-b690-ce2f923db3a9',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ORO'),
  public.resolve_unidad_id('ORO'),
  36.0,
  '{"origen_texto": "ORO", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:33:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:33:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'c5e7d299-658c-4eaf-966d-38969be48a1e',
  'b0da1a78-3693-46b3-b4d9-74524f7392ec',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  39.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  '32179f21-45a5-4e3e-b40a-c64d4ef86a17',
  'dae98962-5361-427a-aa79-7bc2f09faf8d',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('ROGUE'),
  public.resolve_unidad_id('ROGUE'),
  43.0,
  '{"origen_texto": "ROGUE", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:35:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:35:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '9528aefc-d526-4725-b5a0-42b16f0b9851',
  'b0d7773d-b73f-4176-87fa-755bf4840728',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  155.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:36:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:36:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd61e492c-01bc-4112-a2d7-49131a654395',
  'eec9af14-0ada-4f66-901e-a7eb5d0d66ef',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('MR BOB'),
  public.resolve_unidad_id('MR BOB'),
  85.0,
  '{"origen_texto": "MR BOB", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  'b6f8ee52-615d-4d05-b36a-c1db6e5d0fcd',
  '21c68bd1-46af-4222-98ae-a594ce5e3b23',
  date '2026-06-13',
  'diurno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  83.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
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
  'ebf40e3e-388d-4e14-9d23-47467f662961',
  '21c68bd1-46af-4222-98ae-a594ce5e3b23',
  date '2026-06-13',
  'diurno',
  'recibido',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('LJ KELLEY'),
  200.0,
  '{"origen_texto": "PARIÑAS", "n_vale": "6108"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:39:00-05'::timestamptz,
  '6108',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:39:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  'd405536b-9766-4309-b079-f83d097d0471',
  'fec60774-e6a0-48b9-b748-2f29af6ed70c',
  date '2026-06-13',
  'diurno',
  'despacho',
  public.resolve_unidad_id('PARIÑAS'),
  public.resolve_unidad_id('LJ KELLEY'),
  200.0,
  '{"destino_texto": "LJ KELLEY", "n_vale": "6108"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:39:00-05'::timestamptz,
  '6108',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 11:39:00-05'::timestamptz
);

insert into public.diesel_movimientos (
  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at
) values (
  '713b1776-0037-46e9-9c17-5b7c1d47cfef',
  'fc447e10-5e30-49ea-88e5-f83f8535899e',
  date '2026-06-13',
  'nocturno',
  'consumo',
  public.resolve_unidad_id('LJ KELLEY'),
  public.resolve_unidad_id('LJ KELLEY'),
  74.0,
  '{"origen_texto": "LJ KELLEY", "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx"}'::jsonb,
  'vigente',
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:41:00-05'::timestamptz,
  NULL,
  '1fc59be2-4ba7-40b6-9659-767e0b6311df',
  '2026-06-13 23:41:00-05'::timestamptz
);

select public.recalcular_diesel_historial(public.resolve_unidad_id('BUCKLEY EXPRESS'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('CABO BLANCO'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('CHIP II'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('DONALD ROBIN'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ELIZABETH'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('IRIS'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('LJ KELLEY'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('MR BOB'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('OLYMPIC EXPRESS'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ORO'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('PARIÑAS'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ROGUE'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ROSLYN'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('SHEILA R'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('TALARA'), date '2026-06-08', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('VILMA'), date '2026-06-08', 'diurno');
commit;