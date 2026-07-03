begin;
delete from public.diesel_movimientos where fecha = date '2026-06-28';
delete from public.diesel_kardex where fecha = date '2026-06-28';

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '7649a4e3-8dbb-4be0-be73-60906eac74c5', date '2026-06-28', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  18200.0, 18000.0, 0, 200.0, 0, 0.0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":18000.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  0.0, NULL, 'JUAN GONAZALES AVARADO', 'ALEXANDER MORALES CASTRO', NULL, NULL, '6083'
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'c54c4be4-f46b-45f8-ac84-2599be36b125', date '2026-06-28', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  18000.0, 18000.0, 0, 0, 0, 0.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":18000.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'IVAN CASILLO', 'JHON AYALA PANTA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '3a68aa04-1bca-44ad-8446-59aeda46ec01', date '2026-06-28', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2549.0, 2681.0, 0, 0, 0, 68.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":2633.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  200.0, 'LOBITOS EXPRESS CARGA', '-', '-', NULL, '6083', NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '8bcc7d60-647a-415e-a800-d791d95c9b49', date '2026-06-28', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2681.0, 2633.0, 0, 0, 0, 48.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":2633.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, '-', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '96a6cf00-891f-46d7-907b-0538d8e9bb1c', date '2026-06-28', public.resolve_unidad_id('PARIÑAS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('PARIÑAS'),
  5875.0, 5218.0, 0, 500.0, 0, 157.0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":5203.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  0.0, NULL, 'WILFREDO BOULANGGER', 'FRAY MAYTA', NULL, NULL, '6155 / 6156 / 6157'
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'cb25ac93-8857-44d9-9ad7-41f099397b1b', date '2026-06-28', public.resolve_unidad_id('PARIÑAS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('PARIÑAS'),
  5218.0, 5203.0, 0, 0, 0, 15.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":5203.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'MANUEL TINOCO', 'JUAN COSAVALENTE', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '01d6291d-469d-4a96-8bce-ecb6f0ac633d', date '2026-06-28', public.resolve_unidad_id('TALARA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('TALARA'),
  5036.0, 4702.0, 0, 200.0, 0, 134.0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":4682.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  0.0, NULL, 'DONALD ZAPATA ESCOBEDO', 'SEGUNDO CESPEDES FRIAS', NULL, NULL, '5978'
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '23d9bdd0-9de1-4bbc-8a6e-0fd48bcabe3f', date '2026-06-28', public.resolve_unidad_id('TALARA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('TALARA'),
  4702.0, 4682.0, 0, 0, 0, 20.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":4682.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'JOSE HIDALGO', 'PERCY PANTA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'b940d415-d348-464a-bf2d-a323e4d0c5c8', date '2026-06-28', public.resolve_unidad_id('OLYMPIC EXPRESS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('OLYMPIC EXPRESS'),
  2046.0, 2070.0, 0, 0, 0, 76.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":2058.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  100.0, 'PARIÑAS', 'OSCAR BOULANGGER', 'CARLOS BALDA JUAREZ', NULL, '6157', NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '625ad9bb-e1d3-4f9a-b7d1-400c93450809', date '2026-06-28', public.resolve_unidad_id('OLYMPIC EXPRESS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('OLYMPIC EXPRESS'),
  2070.0, 2058.0, 0, 0, 0, 12.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":2058.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'RICHARD ATOCHE', 'GERMAN CRUZ', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '476f1f5b-0cba-4804-8e1a-7dd3581a95cc', date '2026-06-28', public.resolve_unidad_id('DONALD ROBIN'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('DONALD ROBIN'),
  391.0, 315.0, 0, 0, 0, 76.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":315.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  0.0, NULL, 'ANGEL ZETA VALLADOLID', 'CESAR AREVALO BENITES', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '4e662a02-b548-48a9-84a9-ec3c3f5c27bd', date '2026-06-28', public.resolve_unidad_id('DONALD ROBIN'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('DONALD ROBIN'),
  315.0, 315.0, 0, 0, 0, 0.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":315.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '471344fd-804f-4b08-ba19-16a47f7b775e', date '2026-06-28', public.resolve_unidad_id('SHEILA R'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('SHEILA R'),
  284.0, 432.0, 0, 0, 0, 52.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":383.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  200.0, 'TALARA', 'MANUEL MEDINA', 'EDWIN NIZAMA', NULL, '5978', NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '17144b13-7903-46f5-8f12-b63ccf3674a1', date '2026-06-28', public.resolve_unidad_id('SHEILA R'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('SHEILA R'),
  432.0, 383.0, 0, 0, 0, 49.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":383.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'RICHARD PANTA', 'JAVIER PEÑA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'e5acdd67-a2cc-48ad-bb65-ca5f00741793', date '2026-06-28', public.resolve_unidad_id('IRIS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('IRIS'),
  390.0, 351.0, 0, 0, 0, 39.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":311.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  0.0, NULL, 'AGUSTIN MONTES', 'JESUS VITE', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'e08258c0-2d45-4e53-a83d-4f7735d239ea', date '2026-06-28', public.resolve_unidad_id('IRIS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('IRIS'),
  351.0, 311.0, 0, 0, 0, 40.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":311.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'JUAN COSAVALENTE', 'RICARDO MORAN', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'ad82ce4e-a16b-4ad9-91aa-b1b7bec2db09', date '2026-06-28', public.resolve_unidad_id('VILMA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('VILMA'),
  0.0, 0.0, 0, 0, 0, 0.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":0.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  0.0, NULL, 'ARTURO COVEÑAS', 'ARMANDO ALTAMIRANO', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '19d0a81e-ebc0-4ea5-8404-f94dacd1b44d', date '2026-06-28', public.resolve_unidad_id('VILMA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('VILMA'),
  0.0, 0.0, 0, 0, 0, 0.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":0.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'VARADERO', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '96602901-a67d-477f-92d5-c9d02f65f071', date '2026-06-28', public.resolve_unidad_id('ROSLYN'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROSLYN'),
  648.0, 573.0, 0, 0, 0, 75.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":573.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  0.0, NULL, 'ROBERTO PAIVA', 'MARTIR GARCIA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '7f572629-f50a-42a1-a6fd-8d291d72baf1', date '2026-06-28', public.resolve_unidad_id('ROSLYN'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROSLYN'),
  573.0, 573.0, 0, 0, 0, 0.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":573.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '1c5d7b83-29a5-4622-8ce3-52aa8e49e1ec', date '2026-06-28', public.resolve_unidad_id('CHIP II'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CHIP II'),
  373.0, 308.0, 0, 0, 0, 65.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":257.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  0.0, NULL, 'VICTOR CALDERON', 'OTTO SAAVEDRA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '58f498fb-509e-4298-ae66-df4bad179e8a', date '2026-06-28', public.resolve_unidad_id('CHIP II'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CHIP II'),
  308.0, 257.0, 0, 0, 0, 51.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":257.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'DENNIS REBOTARO', 'GEMBERTH FIESTAS', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '52e30f09-804b-4e22-a29a-816193c103fe', date '2026-06-28', public.resolve_unidad_id('BUCKLEY EXPRESS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('BUCKLEY EXPRESS'),
  408.0, 408.0, 0, 0, 0, 0.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":408.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  0.0, NULL, 'RAMIRO PAIVA', 'HERNAN CHULLI', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '1eb668ab-fdf9-486d-9f56-ab380843fc35', date '2026-06-28', public.resolve_unidad_id('BUCKLEY EXPRESS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('BUCKLEY EXPRESS'),
  408.0, 408.0, 0, 0, 0, 0.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":408.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'bfaf41fd-ca11-4695-a6e3-d697cfb6b6a4', date '2026-06-28', public.resolve_unidad_id('CABO BLANCO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CABO BLANCO'),
  560.0, 720.0, 0, 0, 0, 40.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":720.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  200.0, 'PARIÑAS', 'ALCIDES HUARACHA', 'JUAN OLAYA', NULL, '6155', NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'ca896224-e53f-4814-aaa2-47545d01c6f8', date '2026-06-28', public.resolve_unidad_id('CABO BLANCO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CABO BLANCO'),
  720.0, 720.0, 0, 0, 0, 0.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":720.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'a4330af1-b638-4642-8986-e3b912a549a5', date '2026-06-28', public.resolve_unidad_id('ELIZABETH'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ELIZABETH'),
  1937.0, 1906.0, 0, 0, 0, 31.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":1888.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  0.0, NULL, 'WILMER SULLON', 'MARTIN VASQUEZ', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '34d0a5e3-ff2f-48c7-bbc0-9e05be134b15', date '2026-06-28', public.resolve_unidad_id('ELIZABETH'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ELIZABETH'),
  1906.0, 1888.0, 0, 0, 0, 18.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":1888.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'WILMER SULLON', 'MARTIN VASQUEZ', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '8a0275c4-c35f-40d9-ae6e-fa125a45f668', date '2026-06-28', public.resolve_unidad_id('ORO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ORO'),
  2242.0, 2204.0, 0, 0, 0, 38.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":2168.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  0.0, NULL, 'ALFONSO SANTIBAÑEZ PACHERES', 'YISDAN HUANCA ALVARADO', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '8501a237-f883-45fe-9d5f-85513bbb8510', date '2026-06-28', public.resolve_unidad_id('ORO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ORO'),
  2204.0, 2168.0, 0, 0, 0, 36.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":2168.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'ALFONSO SANTIBAÑEZ PACHERES', 'MARIO SOSA MENDOZA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '4b438ffa-357e-4d30-be36-c784eca5e4ac', date '2026-06-28', public.resolve_unidad_id('ROGUE'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROGUE'),
  2207.0, 2169.0, 0, 2.0, 0, 36.0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":2131.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  0.0, NULL, 'EDGARD FERNANDEZ', 'JUAN MAYO', NULL, NULL, '80262'
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'd0d7844b-3866-4449-a348-4c03a0e6cb55', date '2026-06-28', public.resolve_unidad_id('ROGUE'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROGUE'),
  2169.0, 2131.0, 0, 0, 0, 38.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":2131.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'EDGARD FERNANDEZ', 'JOSE VALVERDE', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '1f86367d-ab97-4a70-9cc3-0d0adc1f4c22', date '2026-06-28', public.resolve_unidad_id('MR BOB'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('MR BOB'),
  1888.0, 1765.0, 0, 0, 0, 123.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":1691.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  0.0, NULL, 'CARLOS MORE', 'FERNANDO SUAREZ', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '05b106b4-7f71-448a-85d6-73d6e1c4e9e8', date '2026-06-28', public.resolve_unidad_id('MR BOB'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('MR BOB'),
  1765.0, 1691.0, 0, 0, 0, 74.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":1691.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'JAIME ROJAS', 'CARLOS PAICO', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'f7331ff2-5526-4557-a19a-6b81bae4663f', date '2026-06-28', public.resolve_unidad_id('LJ KELLEY'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LJ KELLEY'),
  527.0, 631.0, 0, 0, 0, 96.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":549.0,"sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '2026-06-28 08:00:00-05'::timestamptz,
  200.0, 'PARIÑAS', 'RAMON JACINTO TUME', 'PERCY NAVARRO ALVARADO', NULL, '6156', NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '35826eea-6d1a-48f0-8d50-12a4e9bfb8ee', date '2026-06-28', public.resolve_unidad_id('LJ KELLEY'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LJ KELLEY'),
  631.0, 549.0, 0, 0, 0, 82.0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":549.0,"sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:00:00-05'::timestamptz, '2026-06-28 20:00:00-05'::timestamptz,
  0, NULL, 'TURNO - DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '32149f41-6b37-4945-8e33-7a952ef3a533', '7649a4e3-8dbb-4be0-be73-60906eac74c5', date '2026-06-28', 'diurno', 'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 200.0, '{"origen":"excel","archivo":"data de junio.xlsx","destino_texto":"LOBITOS EXPRESS CONSUMO"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz, '6083', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:00:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '9c50b498-f82d-4bf2-bea2-fba7d63d9b3a', '3a68aa04-1bca-44ad-8446-59aeda46ec01', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 68.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"LOBITOS EXPRESS CONSUMO"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:01:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:01:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '18b6ee8c-88fa-4d4d-b1c5-1925de05e1a4', '8bcc7d60-647a-415e-a800-d791d95c9b49', date '2026-06-28', 'nocturno', 'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 48.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"LOBITOS EXPRESS CONSUMO"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:02:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:02:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'b41deea3-8998-4ad0-a8ae-64cbc5d7be56', '3a68aa04-1bca-44ad-8446-59aeda46ec01', date '2026-06-28', 'diurno', 'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 200.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"LOBITOS EXPRESS CARGA"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:03:00-05'::timestamptz, '6083', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:03:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '8d985248-964b-4cea-9d82-e6f179f2410a', '96a6cf00-891f-46d7-907b-0538d8e9bb1c', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('PARIÑAS'), 157.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"PARIÑAS"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:04:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:04:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '3f66afe3-017b-48c5-9a79-4a9dbbc2131c', 'cb25ac93-8857-44d9-9ad7-41f099397b1b', date '2026-06-28', 'nocturno', 'consumo',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('PARIÑAS'), 15.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"PARIÑAS"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:05:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:05:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'cd52a86e-d68b-405b-8af2-93e2a6ec3028', '96a6cf00-891f-46d7-907b-0538d8e9bb1c', date '2026-06-28', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('CABO BLANCO'), 200.0, '{"origen":"excel","archivo":"data de junio.xlsx","destino_texto":"CABO BLANCO"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:06:00-05'::timestamptz, '6155', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:06:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'b1192371-29de-42f0-8c76-282462ea5d59', '96a6cf00-891f-46d7-907b-0538d8e9bb1c', date '2026-06-28', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('LJ KELLEY'), 200.0, '{"origen":"excel","archivo":"data de junio.xlsx","destino_texto":"LJ KELLEY"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:07:00-05'::timestamptz, '6156', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:07:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '59f2a8bb-fba8-45f0-a482-c0f4161c0dab', '96a6cf00-891f-46d7-907b-0538d8e9bb1c', date '2026-06-28', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('OLYMPIC EXPRESS'), 100.0, '{"origen":"excel","archivo":"data de junio.xlsx","destino_texto":"OLYMPIC EXPRESS"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:08:00-05'::timestamptz, '6157', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:08:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '629e5773-13d0-4949-91e5-719fd033d94a', '01d6291d-469d-4a96-8bce-ecb6f0ac633d', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('TALARA'), public.resolve_unidad_id('TALARA'), 134.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"TALARA"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:09:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:09:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '4532dc3e-e7b5-49e1-be89-2c5697f755d7', '23d9bdd0-9de1-4bbc-8a6e-0fd48bcabe3f', date '2026-06-28', 'nocturno', 'consumo',
  public.resolve_unidad_id('TALARA'), public.resolve_unidad_id('TALARA'), 20.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"TALARA"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:10:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:10:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '867f1d5b-71bf-476f-93df-886edb31d144', '01d6291d-469d-4a96-8bce-ecb6f0ac633d', date '2026-06-28', 'diurno', 'despacho',
  public.resolve_unidad_id('TALARA'), public.resolve_unidad_id('SHEILA R'), 200.0, '{"origen":"excel","archivo":"data de junio.xlsx","destino_texto":"SHEILA R"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:11:00-05'::timestamptz, '5978', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:11:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '55d2ebde-1de3-411d-9d68-ef233a872988', 'b940d415-d348-464a-bf2d-a323e4d0c5c8', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'), public.resolve_unidad_id('OLYMPIC EXPRESS'), 76.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"OLYMPIC EXPRESS"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:12:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:12:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '119b4857-43a9-428d-8a86-4a59865a768c', '625ad9bb-e1d3-4f9a-b7d1-400c93450809', date '2026-06-28', 'nocturno', 'consumo',
  public.resolve_unidad_id('OLYMPIC EXPRESS'), public.resolve_unidad_id('OLYMPIC EXPRESS'), 12.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"OLYMPIC EXPRESS"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:13:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:13:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '6866c62e-ecc6-492b-92eb-618fb95640d6', 'b940d415-d348-464a-bf2d-a323e4d0c5c8', date '2026-06-28', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('OLYMPIC EXPRESS'), 100.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"PARIÑAS"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:14:00-05'::timestamptz, '6157', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:14:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'bab9c0d0-3127-4175-8348-08bf3d88d3d9', '476f1f5b-0cba-4804-8e1a-7dd3581a95cc', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('DONALD ROBIN'), public.resolve_unidad_id('DONALD ROBIN'), 76.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"DONALD ROBIN"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:15:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:15:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '3f6448bb-6856-474e-9036-8fe40588ec3a', '471344fd-804f-4b08-ba19-16a47f7b775e', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('SHEILA R'), public.resolve_unidad_id('SHEILA R'), 52.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"SHEILA R"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:16:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:16:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '055f169d-af93-4a96-adf2-b091ccec3072', '17144b13-7903-46f5-8f12-b63ccf3674a1', date '2026-06-28', 'nocturno', 'consumo',
  public.resolve_unidad_id('SHEILA R'), public.resolve_unidad_id('SHEILA R'), 49.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"SHEILA R"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:17:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:17:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '2bb2034d-93a5-4948-81cc-c7f2fbd98ebb', '471344fd-804f-4b08-ba19-16a47f7b775e', date '2026-06-28', 'diurno', 'recibido',
  public.resolve_unidad_id('TALARA'), public.resolve_unidad_id('SHEILA R'), 200.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"TALARA"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:18:00-05'::timestamptz, '5978', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:18:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '778f4a86-1314-4841-80c4-127496d45133', 'e5acdd67-a2cc-48ad-bb65-ca5f00741793', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('IRIS'), public.resolve_unidad_id('IRIS'), 39.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"IRIS"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:19:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:19:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'e79eca74-90a2-4dde-8390-72f08d33d2ab', 'e08258c0-2d45-4e53-a83d-4f7735d239ea', date '2026-06-28', 'nocturno', 'consumo',
  public.resolve_unidad_id('IRIS'), public.resolve_unidad_id('IRIS'), 40.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"IRIS"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:20:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:20:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'b2d1385c-c6cb-48a8-bd55-d0fc545b3438', '96602901-a67d-477f-92d5-c9d02f65f071', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('ROSLYN'), public.resolve_unidad_id('ROSLYN'), 75.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"ROSLYN"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:21:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:21:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'f3871463-0aa1-4959-a255-17272920f443', '1c5d7b83-29a5-4622-8ce3-52aa8e49e1ec', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('CHIP II'), public.resolve_unidad_id('CHIP II'), 65.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"CHIP II"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:22:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:22:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '7b67756b-0ef6-4fca-9fc7-009b1dd55e80', '58f498fb-509e-4298-ae66-df4bad179e8a', date '2026-06-28', 'nocturno', 'consumo',
  public.resolve_unidad_id('CHIP II'), public.resolve_unidad_id('CHIP II'), 51.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"CHIP II"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:23:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:23:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'db04dce2-b506-40fb-b0ee-750734af31f8', 'bfaf41fd-ca11-4695-a6e3-d697cfb6b6a4', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('CABO BLANCO'), public.resolve_unidad_id('CABO BLANCO'), 40.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"CABO BLANCO"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:24:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:24:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '1a8e49f0-ccf9-42af-a053-35b4fde0dd70', 'bfaf41fd-ca11-4695-a6e3-d697cfb6b6a4', date '2026-06-28', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('CABO BLANCO'), 200.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"PARIÑAS"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:25:00-05'::timestamptz, '6155', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:25:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '1c4eac43-25e9-4432-bdc2-d1c6e638a986', 'a4330af1-b638-4642-8986-e3b912a549a5', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('ELIZABETH'), public.resolve_unidad_id('ELIZABETH'), 31.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"ELIZABETH"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:26:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:26:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '279f5001-4b12-407c-ba7b-0ae06d25ab17', '34d0a5e3-ff2f-48c7-bbc0-9e05be134b15', date '2026-06-28', 'nocturno', 'consumo',
  public.resolve_unidad_id('ELIZABETH'), public.resolve_unidad_id('ELIZABETH'), 18.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"ELIZABETH"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:27:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:27:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '8f859230-d373-4f91-b3f4-035ebfb7f7b6', '8a0275c4-c35f-40d9-ae6e-fa125a45f668', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('ORO'), public.resolve_unidad_id('ORO'), 38.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"ORO"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:28:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:28:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '5ee22f4d-1d7a-40a1-aa95-f436946e8e8f', '8501a237-f883-45fe-9d5f-85513bbb8510', date '2026-06-28', 'nocturno', 'consumo',
  public.resolve_unidad_id('ORO'), public.resolve_unidad_id('ORO'), 36.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"ORO"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:29:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:29:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'd92ba3c1-065e-46c0-983d-af63ec3181db', '4b438ffa-357e-4d30-be36-c784eca5e4ac', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('ROGUE'), public.resolve_unidad_id('ROGUE'), 36.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"ROGUE"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:30:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:30:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '14e3e941-a4be-4210-b395-2928a5a21775', 'd0d7844b-3866-4449-a348-4c03a0e6cb55', date '2026-06-28', 'nocturno', 'consumo',
  public.resolve_unidad_id('ROGUE'), public.resolve_unidad_id('ROGUE'), 38.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"ROGUE"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:31:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:31:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'aaf6b06e-3546-4e05-a5bc-7305e2b0199e', '4b438ffa-357e-4d30-be36-c784eca5e4ac', date '2026-06-28', 'diurno', 'despacho',
  public.resolve_unidad_id('ROGUE'), public.resolve_unidad_id('LO6'), 2.0, '{"origen":"excel","archivo":"data de junio.xlsx","destino_texto":"LO6"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:32:00-05'::timestamptz, '80262', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:32:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '2fc653ff-58cd-4458-8d7f-f18d474076dd', '1f86367d-ab97-4a70-9cc3-0d0adc1f4c22', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('MR BOB'), public.resolve_unidad_id('MR BOB'), 123.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"MR BOB"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:33:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:33:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '72a7a800-03b4-449f-b055-71c8045ecb35', '05b106b4-7f71-448a-85d6-73d6e1c4e9e8', date '2026-06-28', 'nocturno', 'consumo',
  public.resolve_unidad_id('MR BOB'), public.resolve_unidad_id('MR BOB'), 74.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"MR BOB"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:34:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:34:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '97193925-e6ca-46d7-9f77-e54f9ec2d492', 'f7331ff2-5526-4557-a19a-6b81bae4663f', date '2026-06-28', 'diurno', 'consumo',
  public.resolve_unidad_id('LJ KELLEY'), public.resolve_unidad_id('LJ KELLEY'), 96.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"LJ KELLEY"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:35:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:35:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '2d2b8a3f-1928-4bca-90dc-548004e38627', '35826eea-6d1a-48f0-8d50-12a4e9bfb8ee', date '2026-06-28', 'nocturno', 'consumo',
  public.resolve_unidad_id('LJ KELLEY'), public.resolve_unidad_id('LJ KELLEY'), 82.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"LJ KELLEY"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:36:00-05'::timestamptz, NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 20:36:00-05'::timestamptz
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'ccae439d-6e56-4c60-b858-a2a7d98bda56', 'f7331ff2-5526-4557-a19a-6b81bae4663f', date '2026-06-28', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('LJ KELLEY'), 200.0, '{"origen":"excel","archivo":"data de junio.xlsx","origen_texto":"PARIÑAS"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:37:00-05'::timestamptz, '6156', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-28 08:37:00-05'::timestamptz
);

select public.recalcular_diesel_kardex(id) from public.diesel_kardex where fecha = date '2026-06-28';
select public.recalcular_diesel_historial(public.resolve_unidad_id('BUCKLEY EXPRESS'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('CABO BLANCO'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('CHIP II'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('DONALD ROBIN'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ELIZABETH'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('IRIS'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('LJ KELLEY'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('MR BOB'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('OLYMPIC EXPRESS'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ORO'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('PARIÑAS'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ROGUE'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ROSLYN'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('SHEILA R'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('TALARA'), date '2026-06-28', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('VILMA'), date '2026-06-28', 'diurno');
commit;