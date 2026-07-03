begin;
delete from public.diesel_movimientos where fecha between date '2026-06-24' and date '2026-06-27';
delete from public.diesel_kardex where fecha between date '2026-06-24' and date '2026-06-27';

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'ff55aa6b-eb34-41e3-be34-11c967574286', date '2026-06-24', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  19293, 20000, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"20000","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  1057, 'PARIÑAS', 'JUAN GONAZALES AVARADO', 'ALEXANDER MORALES CASTRO', NULL, '6139', '6077 / 6078'
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '5a39d0e8-a38d-454b-a563-6bb59a8cd691', date '2026-06-24', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  20000, 20000, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"20000","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'IVAN CASILLO', 'JHON AYALA PANTA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'd80ca661-3187-42c5-a4d7-77fa7cc759c8', date '2026-06-24', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2596, 2742, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":false,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2673","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  350, 'LOBITOS EXPRESS CARGA', '-', '-', NULL, '6077 / 6078', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'd663128b-99e1-4753-8c43-962ba99a06b4', date '2026-06-24', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2742, 2673, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":false,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2673","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, '-', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'bca79f08-99b5-4beb-a163-657e23bba535', date '2026-06-24', public.resolve_unidad_id('PARIÑAS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('PARIÑAS'),
  7955, 9000, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"8953","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  5167, 'AMARRADERO #4', 'WILFREDO BOULANGGER', 'FRAY MAYTA', NULL, '6141', '6134 / 6135 / 6136 / 6137 / 6138 / 6139 / 6140'
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'b84d4de0-cc5b-47db-bec4-487ac09d440e', date '2026-06-24', public.resolve_unidad_id('PARIÑAS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('PARIÑAS'),
  9000, 8953, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"8953","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'MANUEL TINOCO', 'JUAN COSAVALENTE', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'ec9a55b4-411d-4040-926e-41e7a49c9938', date '2026-06-24', public.resolve_unidad_id('TALARA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('TALARA'),
  5265, 6839, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"6819","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  1760, 'PARIÑAS', 'DONALD ZAPATA ESCOBEDO', 'SEGUNDO CESPEDES FRIAS', NULL, '6140', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'cc337e65-a492-4f4a-953a-9394c03dd952', date '2026-06-24', public.resolve_unidad_id('TALARA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('TALARA'),
  6839, 6819, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"6819","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'JOSE HIDALGO', 'PERCY PANTA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'b6f0696e-d4cf-400e-83d9-879a3c71d451', date '2026-06-24', public.resolve_unidad_id('OLYMPIC'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('OLYMPIC'),
  2029, 2056, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2044","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  150, 'PARIÑAS', 'OSCAR BOULANGGER', 'CARLOS BALDA JUAREZ', NULL, '6137', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '194e4adc-70e3-4eb6-b4f8-7f6e20f07fe6', date '2026-06-24', public.resolve_unidad_id('OLYMPIC'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('OLYMPIC'),
  2056, 2044, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2044","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'RICHARD ATOCHE', 'GERMAN CRUZ', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '35f77f3c-e5f3-41e7-8450-bec2d20d932a', date '2026-06-24', public.resolve_unidad_id('DONALD ROBIN'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('DONALD ROBIN'),
  459, 383, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"383","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  0, NULL, 'ANGEL ZETA VALLADOLID', 'CESAR AREVALO BENITES', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '87d388d2-f1cf-4ab7-a99b-3b713debc52f', date '2026-06-24', public.resolve_unidad_id('DONALD ROBIN'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('DONALD ROBIN'),
  383, 383, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"383","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '818552d6-c6b0-4b3e-b733-f721d0776610', date '2026-06-24', public.resolve_unidad_id('SHEILA R'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('SHEILA R'),
  309, 446, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"394","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  200, 'PARIÑAS', 'MANUEL MEDINA', 'EDWIN NIZAMA', NULL, '6134', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'bbfeef38-d7b2-48b8-84e8-017c78a5b896', date '2026-06-24', public.resolve_unidad_id('SHEILA R'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('SHEILA R'),
  446, 394, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"394","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'RICHARD PANTA', 'JAVIER PEÑA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '61e3e2b0-7ffc-4c96-a9b3-415109536f5a', date '2026-06-24', public.resolve_unidad_id('IRIS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('IRIS'),
  421, 353, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"301","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  0, NULL, 'AGUSTIN MONTES', 'JESUS VITE', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'f52a078c-f867-40e3-8428-1a3a412ace7c', date '2026-06-24', public.resolve_unidad_id('IRIS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('IRIS'),
  353, 301, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"301","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'JUAN COSAVALENTE', 'RICARDO MORAN', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '415b17e8-1a9b-4612-a54c-01790d9f89b1', date '2026-06-24', public.resolve_unidad_id('VILMA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('VILMA'),
  0, 0, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"0","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  0, NULL, 'ARTURO COVEÑAS', 'ARMANDO ALTAMIRANO', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '18bf590a-80e1-4d95-9221-b248b11fa206', date '2026-06-24', public.resolve_unidad_id('VILMA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('VILMA'),
  0, 0, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"0","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'VARADERO', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '513015a0-db6b-4bec-a9c4-e268b3905e40', date '2026-06-24', public.resolve_unidad_id('ROSLYN'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROSLYN'),
  678, 603, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"603","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  0, NULL, 'ROBERTO PAIVA', 'MARTIR GARCIA', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '818f6bdc-7504-467f-8ace-828ba36304d0', date '2026-06-24', public.resolve_unidad_id('ROSLYN'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROSLYN'),
  603, 603, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"603","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'd7e11edb-15e1-4ca2-b8db-b056a95915b0', date '2026-06-24', public.resolve_unidad_id('CHIP II'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CHIP II'),
  364, 289, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"233","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  0, NULL, 'VICTOR CALDERON', 'OTTO SAAVEDRA', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '4d1c0dba-97b9-462d-9317-b05aeaa691e9', date '2026-06-24', public.resolve_unidad_id('CHIP II'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CHIP II'),
  289, 233, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"233","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'DENNIS REBOTARO', 'GEMBERTH FIESTAS', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '8eeceeec-79f3-41ac-95bf-64570153ac22', date '2026-06-24', public.resolve_unidad_id('BUCKLEY EXPRESS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('BUCKLEY EXPRESS'),
  438, 431, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"431","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  0, NULL, 'RAMIRO PAIVA', 'HERNAN CHULLI', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'df1eafa3-f4ec-4459-a1cb-62d60966bb62', date '2026-06-24', public.resolve_unidad_id('BUCKLEY EXPRESS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('BUCKLEY EXPRESS'),
  431, 431, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"431","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '29dbfed9-754e-4ca0-b53f-97230008ef8b', date '2026-06-24', public.resolve_unidad_id('CABO BLANCO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CABO BLANCO'),
  575, 680, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"680","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  150, 'PARIÑAS', 'JULIAN RIVERA', 'NEPTALI GREY', NULL, '6135', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'b5c4ca8e-193f-4562-878f-3229a187ce7e', date '2026-06-24', public.resolve_unidad_id('CABO BLANCO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CABO BLANCO'),
  680, 680, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"680","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'ce0d22b7-f27c-4470-a7ee-7d1f08a26da6', date '2026-06-24', public.resolve_unidad_id('ELIZABETH'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ELIZABETH'),
  1593, 2061, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2043","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  500, 'PARIÑAS', 'WILMER SULLON', 'MARTIN VASQUEZ', NULL, '6138', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'f3245b0c-040a-483f-9e55-b6294da0728e', date '2026-06-24', public.resolve_unidad_id('ELIZABETH'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ELIZABETH'),
  2061, 2043, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2043","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'WILMER SULLON', 'MARTIN VASQUEZ', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '58a7fcb2-61f1-4601-9043-9ca366d39ade', date '2026-06-24', public.resolve_unidad_id('ORO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ORO'),
  2042, 2005, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1969","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  0, NULL, 'ALFONSO SANTIBAÑEZ PACHERES', 'YISDAN HUANCA ALVARADO', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'e9915435-3a19-480e-abed-2652abbeaec4', date '2026-06-24', public.resolve_unidad_id('ORO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ORO'),
  2005, 1969, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1969","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'ALFONSO SANTIBAÑEZ PACHERES', 'MARIO SOSA MENDOZA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'a27d8a6e-9652-4e38-bce1-d31a9d53c7bc', date '2026-06-24', public.resolve_unidad_id('ROGUE'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROGUE'),
  2020, 1983, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1945","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  0, NULL, 'EDGARD FERNANDEZ', 'JUAN MAYO', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '68a5d1a0-9f0c-432a-b08b-e45accd1ee7a', date '2026-06-24', public.resolve_unidad_id('ROGUE'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROGUE'),
  1983, 1945, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1945","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'EDGARD FERNANDEZ', 'JOSE VALVERDE', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'a88d4670-3097-4c43-911e-e5ec548b9278', date '2026-06-24', public.resolve_unidad_id('MR BOB'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('MR BOB'),
  1807, 1651, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1593","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  0, NULL, 'CARLOS MORE', 'FERNANDO SUAREZ', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '88edf00c-b7f3-4cdd-924b-d7ecd12a4edd', date '2026-06-24', public.resolve_unidad_id('MR BOB'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('MR BOB'),
  1651, 1593, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1593","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'JAIME ROJAS', 'CARLOS PAICO', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '18dd2227-99bf-431f-a3f1-b53c39c6b521', date '2026-06-24', public.resolve_unidad_id('LJ KELLEY'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LJ KELLEY'),
  535, 625, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"560","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:00:00-05', '2026-06-24 08:00:00-05',
  200, 'PARIÑAS', 'RAMON JACINTO TUME', 'PERCY NAVARRO ALVARADO', NULL, '6136', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'ec558ec1-2e21-4b99-b165-c0eca5c669c6', date '2026-06-24', public.resolve_unidad_id('LJ KELLEY'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LJ KELLEY'),
  625, 560, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"560","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:00:00-05', '2026-06-24 20:00:00-05',
  0, NULL, 'TURNO - DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'de5cb96c-4d2a-4d9a-89c0-6d8c2295b7ae', date '2026-06-25', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  20000, 18700, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"18700","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  0, NULL, 'JUAN GONAZALES AVARADO', 'ALEXANDER MORALES CASTRO', NULL, NULL, '6079 / 6080'
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'bdebe499-84e9-40bb-9c47-eb8f10e8f2fe', date '2026-06-25', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  18700, 18700, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"18700","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'IVAN CASILLO', 'JHON AYALA PANTA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'b83858bf-55c4-41a7-bba7-7b20fbbca287', date '2026-06-25', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2673, 2857, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":false,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2600","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  300, 'LOBITOS EXPRESS CARGA', '-', '-', NULL, '6080', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '462c5ff6-e6bd-4988-807d-577f9cdc43e1', date '2026-06-25', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2857, 2600, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":false,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2600","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, '-', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'aa12d762-c289-426a-a869-d0ec131b3a91', date '2026-06-25', public.resolve_unidad_id('PARIÑAS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('PARIÑAS'),
  8953, 8043, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"8021","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  0, NULL, 'WILFREDO BOULANGGER', 'FRAY MAYTA', NULL, NULL, '6142 / 6143 / 6144 / 6145'
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'faaa89eb-1db0-438a-ac72-bdabe74adc8d', date '2026-06-25', public.resolve_unidad_id('PARIÑAS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('PARIÑAS'),
  8043, 8021, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"8021","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'MANUEL TINOCO', 'JUAN COSAVALENTE', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '4172cbd1-695e-4a20-a4e8-d0846d9d8e5b', date '2026-06-25', public.resolve_unidad_id('TALARA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('TALARA'),
  6819, 6326, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"6306","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  0, NULL, 'DONALD ZAPATA ESCOBEDO', 'SEGUNDO CESPEDES FRIAS', NULL, NULL, '5973 / 5974'
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '3fc50e6b-406b-46f8-8fd2-26fb0b4886c7', date '2026-06-25', public.resolve_unidad_id('TALARA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('TALARA'),
  6326, 6306, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"6306","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'JOSE HIDALGO', 'PERCY PANTA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '59850ca4-872b-4a06-a5ff-cb9b050abd44', date '2026-06-25', public.resolve_unidad_id('OLYMPIC'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('OLYMPIC'),
  2044, 2047, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2035","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  150, 'TALARA', 'OSCAR BOULANGGER', 'CARLOS BALDA JUAREZ', NULL, '5974', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '69dea11b-51f7-410b-97d4-7c6b2d8bc4da', date '2026-06-25', public.resolve_unidad_id('OLYMPIC'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('OLYMPIC'),
  2047, 2035, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2035","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'RICHARD ATOCHE', 'GERMAN CRUZ', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '274f5b03-301e-414d-a1e5-adc6b543c2d8', date '2026-06-25', public.resolve_unidad_id('DONALD ROBIN'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('DONALD ROBIN'),
  383, 425, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"425","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  120, 'PARIÑAS', 'ANGEL ZETA VALLADOLID', 'CESAR AREVALO BENITES', NULL, '6143', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '3768513d-ed65-42f1-adb4-6d261516a84b', date '2026-06-25', public.resolve_unidad_id('DONALD ROBIN'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('DONALD ROBIN'),
  425, 425, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"425","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'e1116e67-67b1-46a6-80aa-9ddc8b40741a', date '2026-06-25', public.resolve_unidad_id('SHEILA R'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('SHEILA R'),
  394, 348, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"296","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  0, NULL, 'MANUEL MEDINA', 'EDWIN NIZAMA', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'd069eff6-6d9d-416b-851a-75f9ef1fa681', date '2026-06-25', public.resolve_unidad_id('SHEILA R'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('SHEILA R'),
  348, 296, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"296","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'RICHARD PANTA', 'JAVIER PEÑA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'd49d8c70-22e0-412d-bdb5-b0411ea5c120', date '2026-06-25', public.resolve_unidad_id('IRIS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('IRIS'),
  301, 435, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"395","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  180, 'PARIÑAS', 'AGUSTIN MONTES', 'JESUS VITE', NULL, '6144', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'd9654972-439b-4ef6-bf12-49c91ba48e2f', date '2026-06-25', public.resolve_unidad_id('IRIS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('IRIS'),
  435, 395, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"395","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'JUAN COSAVALENTE', 'RICARDO MORAN', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '44703b32-fe3b-40a6-8cb0-762e24e7e209', date '2026-06-25', public.resolve_unidad_id('VILMA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('VILMA'),
  0, 0, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"0","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  0, NULL, 'ARTURO COVEÑAS', 'ARMANDO ALTAMIRANO', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '364d32ce-66f8-4098-826b-3b7d3af363fd', date '2026-06-25', public.resolve_unidad_id('VILMA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('VILMA'),
  0, 0, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"0","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'VARADERO', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '44268834-1c09-4299-a129-6fe96ce847be', date '2026-06-25', public.resolve_unidad_id('ROSLYN'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROSLYN'),
  603, 694, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"694","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  180, 'PARIÑAS', 'ROBERTO PAIVA', 'MARTIR GARCIA', NULL, '6145', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'c6e4a0f0-173a-4585-97e2-fa9fb9df058d', date '2026-06-25', public.resolve_unidad_id('ROSLYN'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROSLYN'),
  694, 694, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"694","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '3cd21959-ba75-4069-830a-76e5585f8ab6', date '2026-06-25', public.resolve_unidad_id('CHIP II'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CHIP II'),
  233, 420, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"364","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  250, 'PARIÑAS', 'VICTOR CALDERON', 'OTTO SAAVEDRA', NULL, '6142', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'ebb2d454-6b90-4e2e-b699-04ed9bc08f66', date '2026-06-25', public.resolve_unidad_id('CHIP II'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CHIP II'),
  420, 364, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"364","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'DENNIS REBOTARO', 'GEMBERTH FIESTAS', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'cabbb14b-2439-404e-8fc0-828801550603', date '2026-06-25', public.resolve_unidad_id('BUCKLEY EXPRESS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('BUCKLEY EXPRESS'),
  431, 415, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"415","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  0, NULL, 'RAMIRO PAIVA', 'HERNAN CHULLI', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '1da9f9bd-b601-47c8-a50f-a795c8876410', date '2026-06-25', public.resolve_unidad_id('BUCKLEY EXPRESS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('BUCKLEY EXPRESS'),
  415, 415, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"415","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'c04c9cc3-a68e-4f2a-979d-2b05023db2ed', date '2026-06-25', public.resolve_unidad_id('CABO BLANCO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CABO BLANCO'),
  680, 650, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"625","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  0, NULL, 'JULIAN RIVERA', 'NEPTALI GREY', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'd6ddc902-11ee-4038-9fa2-47c33fb5e40a', date '2026-06-25', public.resolve_unidad_id('CABO BLANCO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CABO BLANCO'),
  650, 625, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"625","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'f17c6da0-7e30-4b58-b431-753a1adc8fbd', date '2026-06-25', public.resolve_unidad_id('ELIZABETH'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ELIZABETH'),
  2043, 2011, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1993","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  0, NULL, 'WILMER SULLON', 'MARTIN VASQUEZ', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'b131f308-3475-421d-bf1c-d442c19098cf', date '2026-06-25', public.resolve_unidad_id('ELIZABETH'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ELIZABETH'),
  2011, 1993, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1993","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'WILMER SULLON', 'MARTIN VASQUEZ', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '22948883-9f3b-4f81-928c-6a3b533afcb1', date '2026-06-25', public.resolve_unidad_id('ORO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ORO'),
  1969, 1927, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1891","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  0, NULL, 'ALFONSO SANTIBAÑEZ PACHERES', 'YISDAN HUANCA ALVARADO', NULL, NULL, '81462'
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '13babfcd-dee1-4964-8d8c-4cd4b4b605c7', date '2026-06-25', public.resolve_unidad_id('ORO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ORO'),
  1927, 1891, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1891","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'ALFONSO SANTIBAÑEZ PACHERES', 'MARIO SOSA MENDOZA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '286f395b-3e14-4e8d-a208-5c70a97a7dc1', date '2026-06-25', public.resolve_unidad_id('ROGUE'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROGUE'),
  1945, 1909, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1866","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  0, NULL, 'EDGARD FERNANDEZ', 'JUAN MAYO', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'ef55a4fa-c430-4c5f-9287-1b52da3be725', date '2026-06-25', public.resolve_unidad_id('ROGUE'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROGUE'),
  1909, 1866, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1866","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'EDGARD FERNANDEZ', 'JOSE VALVERDE', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '2f798624-fc3d-4338-b641-9f5c489ad5b1', date '2026-06-25', public.resolve_unidad_id('MR BOB'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('MR BOB'),
  1593, 2440, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2308","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  1000, 'LOBITOS EXPRESS CARGA', 'CARLOS MORE', 'FERNANDO SUAREZ', NULL, '6079', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '4b26c534-f90d-4a9d-9561-a9ee9b22636f', date '2026-06-25', public.resolve_unidad_id('MR BOB'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('MR BOB'),
  2440, 2308, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2308","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'JAIME ROJAS', 'CARLOS PAICO', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '443030e4-af07-40e1-a156-4cf09f80552b', date '2026-06-25', public.resolve_unidad_id('LJ KELLEY'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LJ KELLEY'),
  560, 648, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"586","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:00:00-05', '2026-06-25 08:00:00-05',
  200, 'TALARA', 'RAMON JACINTO TUME', 'PERCY NAVARRO ALVARADO', NULL, '5973', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '85935e48-f276-42a6-bcda-11091ac82a91', date '2026-06-25', public.resolve_unidad_id('LJ KELLEY'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LJ KELLEY'),
  648, 586, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"586","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:00:00-05', '2026-06-25 20:00:00-05',
  0, NULL, 'TURNO - DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '9b718cad-285f-48ed-97ba-d8cfe97e128a', date '2026-06-26', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  18700, 18200, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"18200","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  0, NULL, 'JUAN GONAZALES AVARADO', 'ALEXANDER MORALES CASTRO', NULL, NULL, '6081 / 6082'
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '245bfccb-45e1-48aa-9512-21457f73fbf7', date '2026-06-26', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  18200, 18200, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"18200","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'IVAN CASILLO', 'JHON AYALA PANTA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '30dd522c-802f-4486-8dbf-a284747a1bf6', date '2026-06-26', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2600, 2800, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":false,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2645","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  500, 'LOBITOS EXPRESS CARGA', '-', '-', NULL, '6081 / 6082', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '258639d7-cf02-4e17-9f3c-359c57d1c53b', date '2026-06-26', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2800, 2645, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":false,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2645","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, '-', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '83facad9-4297-4cc9-a54e-52ed740d1a73', date '2026-06-26', public.resolve_unidad_id('PARIÑAS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('PARIÑAS'),
  8021, 6832, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"6817","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  0, NULL, 'WILFREDO BOULANGGER', 'FRAY MAYTA', NULL, NULL, '6146 / 6147 / 6148 / 6149'
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '8c6329fb-c203-4375-a9f6-65d8d5af0c65', date '2026-06-26', public.resolve_unidad_id('PARIÑAS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('PARIÑAS'),
  6832, 6817, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"6817","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'MANUEL TINOCO', 'JUAN COSAVALENTE', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '5fb42474-e4ef-498e-8c62-c628fb147cb1', date '2026-06-26', public.resolve_unidad_id('TALARA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('TALARA'),
  6306, 5582, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"5558","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  0, NULL, 'DONALD ZAPATA ESCOBEDO', 'SEGUNDO CESPEDES FRIAS', NULL, NULL, '5975'
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'dbebb529-1ca9-4907-b76b-e0052bbb54a1', date '2026-06-26', public.resolve_unidad_id('TALARA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('TALARA'),
  5582, 5558, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"5558","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'JOSE HIDALGO', 'PERCY PANTA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '5d7b8f22-1873-46e5-8e47-ce7124bba72d', date '2026-06-26', public.resolve_unidad_id('OLYMPIC'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('OLYMPIC'),
  2035, 2061, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2045","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  150, 'PARIÑAS', 'OSCAR BOULANGGER', 'CARLOS BALDA JUAREZ', NULL, '6148', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'a542ffc1-f82a-4978-b87b-894c62b05d91', date '2026-06-26', public.resolve_unidad_id('OLYMPIC'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('OLYMPIC'),
  2061, 2045, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2045","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'RICHARD ATOCHE', 'GERMAN CRUZ', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '4762f0d8-d7cb-42c9-ac6c-8b0609ec2b92', date '2026-06-26', public.resolve_unidad_id('DONALD ROBIN'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('DONALD ROBIN'),
  425, 349, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"349","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  0, NULL, 'ANGEL ZETA VALLADOLID', 'CESAR AREVALO BENITES', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '4b24ebe9-0f1f-4ae9-9f05-d211acac61e8', date '2026-06-26', public.resolve_unidad_id('DONALD ROBIN'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('DONALD ROBIN'),
  349, 349, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"349","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'a0747884-3790-4795-8e72-222e09af4cf7', date '2026-06-26', public.resolve_unidad_id('SHEILA R'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('SHEILA R'),
  296, 438, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"383","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  200, 'PARIÑAS', 'MANUEL MEDINA', 'EDWIN NIZAMA', NULL, '6149', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'fb9eca02-9c7f-4847-8e95-916105286d68', date '2026-06-26', public.resolve_unidad_id('SHEILA R'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('SHEILA R'),
  438, 383, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"383","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'RICHARD PANTA', 'JAVIER PEÑA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'e21aafaf-4fa3-48c7-83d5-0700a4d4248c', date '2026-06-26', public.resolve_unidad_id('IRIS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('IRIS'),
  395, 356, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"305","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  0, NULL, 'AGUSTIN MONTES', 'JESUS VITE', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'f33a9b12-8565-4aee-be69-5102a5954b81', date '2026-06-26', public.resolve_unidad_id('IRIS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('IRIS'),
  356, 305, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"305","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'JUAN COSAVALENTE', 'RICARDO MORAN', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '9b9f98ae-152b-48d1-953c-afe9ca772ea9', date '2026-06-26', public.resolve_unidad_id('VILMA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('VILMA'),
  0, 0, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"0","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  0, NULL, 'ARTURO COVEÑAS', 'ARMANDO ALTAMIRANO', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '0b24b282-d036-45cb-8ce4-d5e04e7b1168', date '2026-06-26', public.resolve_unidad_id('VILMA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('VILMA'),
  0, 0, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"0","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'VARADERO', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '2b0cb053-af0d-4cc2-8be8-f8c3d3ee6ddb', date '2026-06-26', public.resolve_unidad_id('ROSLYN'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROSLYN'),
  694, 603, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"603","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  0, NULL, 'ROBERTO PAIVA', 'MARTIR GARCIA', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'cd24d7bb-3212-4b95-858b-5f6ed37466de', date '2026-06-26', public.resolve_unidad_id('ROSLYN'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROSLYN'),
  603, 603, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"603","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '78a8b375-f298-419f-9853-834f60e8708c', date '2026-06-26', public.resolve_unidad_id('CHIP II'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CHIP II'),
  364, 299, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"248","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  0, NULL, 'VICTOR CALDERON', 'OTTO SAAVEDRA', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '9989e73e-0d80-48d8-b11d-8dfe4d1f9fd6', date '2026-06-26', public.resolve_unidad_id('CHIP II'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CHIP II'),
  299, 248, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"248","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'DENNIS REBOTARO', 'GEMBERTH FIESTAS', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'e40ddce0-08bc-4be9-b99a-d2c2261bafcb', date '2026-06-26', public.resolve_unidad_id('BUCKLEY EXPRESS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('BUCKLEY EXPRESS'),
  415, 415, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"415","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  0, NULL, 'RAMIRO PAIVA', 'HERNAN CHULLI', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '2c74e8de-87e4-4cb2-a99b-fac363817fc6', date '2026-06-26', public.resolve_unidad_id('BUCKLEY EXPRESS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('BUCKLEY EXPRESS'),
  415, 415, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"415","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'cc69075e-447b-4861-9cc1-a6577215c073', date '2026-06-26', public.resolve_unidad_id('CABO BLANCO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CABO BLANCO'),
  625, 605, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"605","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  0, NULL, 'ALCIDES HUARACHA', 'JUAN OLAYA', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'dee0053e-a504-497b-9679-6541445d723e', date '2026-06-26', public.resolve_unidad_id('CABO BLANCO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CABO BLANCO'),
  605, 605, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"605","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '00f88765-b2cc-4173-92bd-3ac4c88558f5', date '2026-06-26', public.resolve_unidad_id('ELIZABETH'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ELIZABETH'),
  1993, 1973, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1955","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  0, NULL, 'WILMER SULLON', 'MARTIN VASQUEZ', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '87a23d5c-7159-4ee4-a01b-80a72075a0d4', date '2026-06-26', public.resolve_unidad_id('ELIZABETH'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ELIZABETH'),
  1973, 1955, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1955","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'WILMER SULLON', 'MARTIN VASQUEZ', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'c5a9e8f5-16fd-480d-87f8-643ca98782de', date '2026-06-26', public.resolve_unidad_id('ORO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ORO'),
  1891, 2354, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2318","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  500, 'TALARA', 'ALFONSO SANTIBAÑEZ PACHERES', 'YISDAN HUANCA ALVARADO', NULL, '5975', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '539e3dab-c8bf-41a4-ad69-7ecca67395af', date '2026-06-26', public.resolve_unidad_id('ORO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ORO'),
  2354, 2318, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2318","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'ALFONSO SANTIBAÑEZ PACHERES', 'MARIO SOSA MENDOZA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '63221687-2b51-4865-bc26-84ed14c57dd7', date '2026-06-26', public.resolve_unidad_id('ROGUE'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROGUE'),
  1866, 2328, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2290","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  500, 'PARIÑAS', 'EDGARD FERNANDEZ', 'JUAN MAYO', NULL, '6146', '80258'
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '262e0ae8-9b60-4895-8008-60b9b43850da', date '2026-06-26', public.resolve_unidad_id('ROGUE'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROGUE'),
  2328, 2290, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2290","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'EDGARD FERNANDEZ', 'JOSE VALVERDE', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '2165a45e-6e2b-4f54-93cd-21a76e6acafa', date '2026-06-26', public.resolve_unidad_id('MR BOB'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('MR BOB'),
  2308, 2112, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2040","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  0, NULL, 'CARLOS MORE', 'FERNANDO SUAREZ', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '0dc5b079-02c7-4a17-b94d-7906315ad9d5', date '2026-06-26', public.resolve_unidad_id('MR BOB'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('MR BOB'),
  2112, 2040, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2040","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'JAIME ROJAS', 'CARLOS PAICO', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'ba4940f5-dad8-451f-8962-48b407054ef9', date '2026-06-26', public.resolve_unidad_id('LJ KELLEY'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LJ KELLEY'),
  586, 620, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"532","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 08:00:00-05', '2026-06-26 08:00:00-05',
  150, 'PARIÑAS', 'RAMON JACINTO TUME', 'PERCY NAVARRO ALVARADO', NULL, '6147', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '15d2e9fc-54c7-43c9-b3f1-398db3527a01', date '2026-06-26', public.resolve_unidad_id('LJ KELLEY'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LJ KELLEY'),
  620, 532, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"532","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 20:00:00-05', '2026-06-26 20:00:00-05',
  0, NULL, 'TURNO - DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '48617ca3-1bfa-49ca-a384-8e2e52b69c34', date '2026-06-27', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  18200, 18200, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"18200","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  0, NULL, 'JUAN GONAZALES AVARADO', 'ALEXANDER MORALES CASTRO', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '8e7b4caf-473e-408e-a2d3-af6edba0237e', date '2026-06-27', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CARGA'),
  18200, 18200, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"18200","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'IVAN CASILLO', 'JHON AYALA PANTA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'a185fd3a-83dc-4d70-8a5e-b05f41ee2a59', date '2026-06-27', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2645, 2597, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":false,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2549","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  0, NULL, '-', '-', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'e4c7491f-bc73-4d86-9bc9-be338f4e2a20', date '2026-06-27', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'),
  2597, 2549, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":false,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2549","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, '-', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'ea4dc617-bbf7-430d-99ea-6aa41a443c86', date '2026-06-27', public.resolve_unidad_id('PARIÑAS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('PARIÑAS'),
  6817, 5896, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"5875","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  0, NULL, 'WILFREDO BOULANGGER', 'FRAY MAYTA', NULL, NULL, '6151 / 6152 / 6153 / 6154'
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '169f4329-0968-40cd-b798-96deecb2dd2c', date '2026-06-27', public.resolve_unidad_id('PARIÑAS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('PARIÑAS'),
  5896, 5875, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"5875","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'MANUEL TINOCO', 'JUAN COSAVALENTE', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'cb72135b-9dfc-4ca0-adb5-ba8c91cfd987', date '2026-06-27', public.resolve_unidad_id('TALARA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('TALARA'),
  5558, 5052, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"5036","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  0, NULL, 'DONALD ZAPATA ESCOBEDO', 'SEGUNDO CESPEDES FRIAS', NULL, NULL, '5976 / 5977'
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'ad6d0239-ae04-4e4d-8ec3-bb8fad9c4abf', date '2026-06-27', public.resolve_unidad_id('TALARA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('TALARA'),
  5052, 5036, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"5036","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'JOSE HIDALGO', 'PERCY PANTA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '814cc7fd-eee0-4c8e-b580-9c4777cf9273', date '2026-06-27', public.resolve_unidad_id('OLYMPIC'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('OLYMPIC'),
  2045, 2058, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2046","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  150, 'TALARA', 'OSCAR BOULANGGER', 'CARLOS BALDA JUAREZ', NULL, '5977', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'cedd2f23-136b-412b-aa2c-f8bab521d6f4', date '2026-06-27', public.resolve_unidad_id('OLYMPIC'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('OLYMPIC'),
  2058, 2046, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2046","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'RICHARD ATOCHE', 'GERMAN CRUZ', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '61e964bc-f3e2-46f0-9979-8e23f52a7ac8', date '2026-06-27', public.resolve_unidad_id('DONALD ROBIN'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('DONALD ROBIN'),
  349, 391, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"391","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  120, 'PARIÑAS', 'ANGEL ZETA VALLADOLID', 'CESAR AREVALO BENITES', NULL, '6152', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '7bb98867-769f-4e08-9c36-9c5462267396', date '2026-06-27', public.resolve_unidad_id('DONALD ROBIN'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('DONALD ROBIN'),
  391, 391, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"391","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '54a07850-9b43-4427-8625-988dc24189ff', date '2026-06-27', public.resolve_unidad_id('SHEILA R'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('SHEILA R'),
  383, 324, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"284","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  0, NULL, 'MANUEL MEDINA', 'EDWIN NIZAMA', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'd8cd4c8d-557d-498c-805a-c2f4540c0ad5', date '2026-06-27', public.resolve_unidad_id('SHEILA R'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('SHEILA R'),
  324, 284, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"284","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'RICHARD PANTA', 'JAVIER PEÑA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'e6192cdd-f9ef-4e3a-bbcd-7dc4d57eb0a5', date '2026-06-27', public.resolve_unidad_id('IRIS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('IRIS'),
  305, 435, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"390","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  184, 'PARIÑAS', 'AGUSTIN MONTES', 'JESUS VITE', NULL, '6154', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'a9ce45c0-122b-440f-ba8e-b14457f51643', date '2026-06-27', public.resolve_unidad_id('IRIS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('IRIS'),
  435, 390, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"390","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'JUAN COSAVALENTE', 'RICARDO MORAN', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '5dc669e1-257f-4b2d-b13c-c394a437101c', date '2026-06-27', public.resolve_unidad_id('VILMA'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('VILMA'),
  0, 0, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"0","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  0, NULL, 'ARTURO COVEÑAS', 'ARMANDO ALTAMIRANO', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '226c637b-f6f3-494d-a991-cc1e1377c1be', date '2026-06-27', public.resolve_unidad_id('VILMA'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('VILMA'),
  0, 0, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"0","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'VARADERO', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '7e7ec61b-4b5e-4222-992a-1bab1d2e6344', date '2026-06-27', public.resolve_unidad_id('ROSLYN'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROSLYN'),
  603, 648, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"648","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  130, 'PARIÑAS', 'ROBERTO PAIVA', 'MARTIR GARCIA', NULL, '6153', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '320ec547-7e4a-421c-95bd-350515dc382d', date '2026-06-27', public.resolve_unidad_id('ROSLYN'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROSLYN'),
  648, 648, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"648","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '03f7b3f2-2d87-4e01-8b68-8e64ee045e77', date '2026-06-27', public.resolve_unidad_id('CHIP II'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CHIP II'),
  248, 429, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"373","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  250, 'PARIÑAS', 'VICTOR CALDERON', 'OTTO SAAVEDRA', NULL, '6151', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '70e4214b-880d-4d4c-b607-1a8f2eb4bb01', date '2026-06-27', public.resolve_unidad_id('CHIP II'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CHIP II'),
  429, 373, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"373","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'DENNIS REBOTARO', 'GEMBERTH FIESTAS', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '739e61ff-3857-43c1-b6a1-78e4b5908eb8', date '2026-06-27', public.resolve_unidad_id('BUCKLEY EXPRESS'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('BUCKLEY EXPRESS'),
  415, 408, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"408","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  0, NULL, 'RAMIRO PAIVA', 'HERNAN CHULLI', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'c63a6482-8af8-47cd-90ff-e2ece80b0714', date '2026-06-27', public.resolve_unidad_id('BUCKLEY EXPRESS'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('BUCKLEY EXPRESS'),
  408, 408, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"408","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '5305c530-a834-421a-9aef-668c475230e6', date '2026-06-27', public.resolve_unidad_id('CABO BLANCO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CABO BLANCO'),
  605, 560, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"560","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  0, NULL, 'ALCIDES HUARACHA', 'JUAN OLAYA', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'f9464e12-ac01-43ec-a7f5-e874a891e000', date '2026-06-27', public.resolve_unidad_id('CABO BLANCO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('CABO BLANCO'),
  560, 560, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"560","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'T.DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '7ab262ac-040f-4313-afdf-93cb9270b19a', date '2026-06-27', public.resolve_unidad_id('ELIZABETH'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ELIZABETH'),
  1955, 1955, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":false,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1937","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  0, NULL, 'WILMER SULLON', 'MARTIN VASQUEZ', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'c8491e18-6afd-46f6-8020-4379bd6e25f1', date '2026-06-27', public.resolve_unidad_id('ELIZABETH'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ELIZABETH'),
  1955, 1937, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1937","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'WILMER SULLON', 'MARTIN VASQUEZ', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '3eb79d44-92f1-4cd1-921b-affbf9848f68', date '2026-06-27', public.resolve_unidad_id('ORO'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ORO'),
  2318, 2278, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2242","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  0, NULL, 'ALFONSO SANTIBAÑEZ PACHERES', 'YISDAN HUANCA ALVARADO', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '478a63e8-116b-4278-8da4-ecf928b74df0', date '2026-06-27', public.resolve_unidad_id('ORO'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ORO'),
  2278, 2242, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2242","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'ALFONSO SANTIBAÑEZ PACHERES', 'MARIO SOSA MENDOZA', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'b1839178-9d7c-4fbc-817f-7cc64b12bfad', date '2026-06-27', public.resolve_unidad_id('ROGUE'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROGUE'),
  2290, 2250, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":true,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2207","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  0, NULL, 'EDGARD FERNANDEZ', 'JUAN MAYO', NULL, NULL, '80260 / 80261'
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '721b73a6-d922-40a0-81a0-4695a227774b', date '2026-06-27', public.resolve_unidad_id('ROGUE'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('ROGUE'),
  2250, 2207, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"2207","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'EDGARD FERNANDEZ', 'JOSE VALVERDE', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '4b04731c-1370-48cd-b6eb-44b551665ccb', date '2026-06-27', public.resolve_unidad_id('MR BOB'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('MR BOB'),
  2040, 1933, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1888","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  0, NULL, 'CARLOS MORE', 'FERNANDO SUAREZ', NULL, NULL, NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'b8806685-ea06-4baf-9fee-88c38f05dcdb', date '2026-06-27', public.resolve_unidad_id('MR BOB'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('MR BOB'),
  1933, 1888, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"1888","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'JAIME ROJAS', 'CARLOS PAICO', NULL, NULL, NULL
);

insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  '9445d94e-aa13-48c4-b100-018cb56e59fd', date '2026-06-27', public.resolve_unidad_id('LJ KELLEY'), 'diurno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LJ KELLEY'),
  532, 614, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"527","sondaje_aplica_stock":true,"turno_importado":"diurno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 08:00:00-05', '2026-06-27 08:00:00-05',
  200, 'TALARA', 'RAMON JACINTO TUME', 'PERCY NAVARRO ALVARADO', NULL, '5976', NULL
);
insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (
  'c37c5855-89a0-425e-b2a4-16c0b89f053e', date '2026-06-27', public.resolve_unidad_id('LJ KELLEY'), 'nocturno', '1fc59be2-4ba7-40b6-9659-767e0b6311df', public.resolve_unidad_id('LJ KELLEY'),
  614, 527, 0, 0, 0, 0, 0, 0,
  '{"recarga":false,"despacho":false,"consumo":true,"sondaje":false,"tripulacion":true,"observaciones":false}'::jsonb, '{"archivo":"data de junio.xlsx","importado_desde_excel":true,"stock_final_excel":"527","sondaje_aplica_stock":true,"turno_importado":"nocturno"}'::jsonb, NULL, true, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 20:00:00-05', '2026-06-27 20:00:00-05',
  0, NULL, 'TURNO - DIA', '-', NULL, NULL, NULL
);

insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'eddf4e8a-ec5b-440f-ab81-732f4d1f1bed', 'ff55aa6b-eb34-41e3-be34-11c967574286', date '2026-06-24', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), 1057, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:01:00-05', '6139', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:01:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'ee55863c-45bb-4c19-a500-5f555a9a964d', 'd80ca661-3187-42c5-a4d7-77fa7cc759c8', date '2026-06-24', 'diurno', 'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA') , public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 150, '{"origen":"excel","origen_texto":"LOBITOS EXPRESS CARGA","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:02:00-05', '6077', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:02:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'a9210066-22d8-4436-bc72-d1a91a1e39b8', 'd80ca661-3187-42c5-a4d7-77fa7cc759c8', date '2026-06-24', 'diurno', 'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA') , public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 200, '{"origen":"excel","origen_texto":"LOBITOS EXPRESS CARGA","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:03:00-05', '6078', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:03:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'f781b27b-90d6-43b6-91bd-59141afeb174', 'd80ca661-3187-42c5-a4d7-77fa7cc759c8', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), NULL, 204, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:04:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:04:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'e4d4d5ec-034b-4d82-9d8e-f673d0b7e182', 'd663128b-99e1-4753-8c43-962ba99a06b4', date '2026-06-24', 'nocturno', 'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), NULL, 69, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:05:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:05:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '8efea264-4d16-483b-a3df-96b7ebd64d47', 'bca79f08-99b5-4beb-a163-657e23bba535', date '2026-06-24', 'diurno', 'recibido',
  public.resolve_unidad_id('AMARRADERO N 4') , public.resolve_unidad_id('PARIÑAS'), 5167, '{"origen":"excel","origen_texto":"AMARRADERO N 4","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:06:00-05', '6141', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:06:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '3c37d65b-6f7e-4006-998a-692162f9e6b1', 'bca79f08-99b5-4beb-a163-657e23bba535', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('PARIÑAS'), NULL, 105, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:07:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:07:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '09ec5a07-9162-4f55-bea3-ba57cabdf0ee', 'b84d4de0-cc5b-47db-bec4-487ac09d440e', date '2026-06-24', 'nocturno', 'consumo',
  public.resolve_unidad_id('PARIÑAS'), NULL, 47, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:08:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:08:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '003d02f9-3fab-4a1b-8fe0-929c2c94e678', 'ec9a55b4-411d-4040-926e-41e7a49c9938', date '2026-06-24', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('TALARA'), 1760, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:09:00-05', '6140', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:09:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'a08364f4-0e42-4648-acad-80248e85397c', 'ec9a55b4-411d-4040-926e-41e7a49c9938', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('TALARA'), NULL, 186, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:10:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:10:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'bfe81ca9-46d1-434f-90ce-6a6d839d1668', 'cc337e65-a492-4f4a-953a-9394c03dd952', date '2026-06-24', 'nocturno', 'consumo',
  public.resolve_unidad_id('TALARA'), NULL, 20, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:11:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:11:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '20a47f7a-39da-4b61-b939-e1276a08048b', 'b6f0696e-d4cf-400e-83d9-879a3c71d451', date '2026-06-24', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('OLYMPIC'), 150, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:12:00-05', '6137', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:12:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'b357cafb-35f7-45bc-aa4e-0b8254b93258', 'b6f0696e-d4cf-400e-83d9-879a3c71d451', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('OLYMPIC'), NULL, 123, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:13:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:13:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '2d40e88d-64b9-4b5c-af6b-9e3f58ec912e', '194e4adc-70e3-4eb6-b4f8-7f6e20f07fe6', date '2026-06-24', 'nocturno', 'consumo',
  public.resolve_unidad_id('OLYMPIC'), NULL, 12, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:14:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:14:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'eb00643c-3a90-4a9a-8bbc-ee1e4780c098', '35f77f3c-e5f3-41e7-8450-bec2d20d932a', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('DONALD ROBIN'), NULL, 76, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:15:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:15:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'd328d55e-37fd-4c49-9ddd-bed6c657480c', '818552d6-c6b0-4b3e-b733-f721d0776610', date '2026-06-24', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('SHEILA R'), 200, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:16:00-05', '6134', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:16:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'dbb2fa64-d3e5-4cd4-897c-f7f2b95543f0', '818552d6-c6b0-4b3e-b733-f721d0776610', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('SHEILA R'), NULL, 63, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:17:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:17:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '2b55c910-1ed0-4f31-bacd-519e47d61fee', 'bbfeef38-d7b2-48b8-84e8-017c78a5b896', date '2026-06-24', 'nocturno', 'consumo',
  public.resolve_unidad_id('SHEILA R'), NULL, 52, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:18:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:18:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '42273666-db8a-49db-abd2-cc6eed5c231a', '61e3e2b0-7ffc-4c96-a9b3-415109536f5a', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('IRIS'), NULL, 68, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:19:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:19:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'e7588d36-4a0d-42d7-8a5f-893fc1a3cf16', 'f52a078c-f867-40e3-8428-1a3a412ace7c', date '2026-06-24', 'nocturno', 'consumo',
  public.resolve_unidad_id('IRIS'), NULL, 52, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:20:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:20:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'ac4b723f-8e21-4eb5-b0d9-23c9e90dd74f', '513015a0-db6b-4bec-a9c4-e268b3905e40', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('ROSLYN'), NULL, 75, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:21:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:21:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'd681132a-a49f-49ac-a3c2-b5bf94dfba43', 'd7e11edb-15e1-4ca2-b8db-b056a95915b0', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('CHIP II'), NULL, 75, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:22:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:22:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '9fa37409-642e-409c-b4c1-5a753cbae3f3', '4d1c0dba-97b9-462d-9317-b05aeaa691e9', date '2026-06-24', 'nocturno', 'consumo',
  public.resolve_unidad_id('CHIP II'), NULL, 56, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:23:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:23:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'f1c229b2-77d6-4089-9b19-cebb3f799c69', '8eeceeec-79f3-41ac-95bf-64570153ac22', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'), NULL, 7, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:24:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:24:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '5d93930e-8ff9-4ff9-b3d1-e6b26a2db268', '29dbfed9-754e-4ca0-b53f-97230008ef8b', date '2026-06-24', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('CABO BLANCO'), 150, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:25:00-05', '6135', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:25:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '2d7e567f-e005-4150-8139-9cf1c21e36a7', '29dbfed9-754e-4ca0-b53f-97230008ef8b', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('CABO BLANCO'), NULL, 45, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:26:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:26:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '8b6ea7bc-4af6-40ae-8bdd-672f4175d4a6', 'ce0d22b7-f27c-4470-a7ee-7d1f08a26da6', date '2026-06-24', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('ELIZABETH'), 500, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:27:00-05', '6138', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:27:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '5f9fff80-a51f-417a-992b-a6cadc2270cb', 'ce0d22b7-f27c-4470-a7ee-7d1f08a26da6', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('ELIZABETH'), NULL, 32, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:28:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:28:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'db7ba106-4827-4e6e-9166-d0016612fbd6', 'f3245b0c-040a-483f-9e55-b6294da0728e', date '2026-06-24', 'nocturno', 'consumo',
  public.resolve_unidad_id('ELIZABETH'), NULL, 18, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:29:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:29:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'f7b39439-1d27-486d-bcdb-3f4d9de72a78', '58a7fcb2-61f1-4601-9043-9ca366d39ade', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('ORO'), NULL, 37, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:30:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:30:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '17211f98-7e16-4c9d-b35c-ad28e97a5682', 'e9915435-3a19-480e-abed-2652abbeaec4', date '2026-06-24', 'nocturno', 'consumo',
  public.resolve_unidad_id('ORO'), NULL, 36, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:31:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:31:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '22a9a886-8503-4b46-b0f6-f7a1ac65dfa6', 'a27d8a6e-9652-4e38-bce1-d31a9d53c7bc', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('ROGUE'), NULL, 37, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:32:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:32:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'a925aea6-7782-42b8-86a1-700218dd586e', '68a5d1a0-9f0c-432a-b08b-e45accd1ee7a', date '2026-06-24', 'nocturno', 'consumo',
  public.resolve_unidad_id('ROGUE'), NULL, 38, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:33:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:33:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '4303db98-858b-462d-8187-8d5d898a113a', 'a88d4670-3097-4c43-911e-e5ec548b9278', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('MR BOB'), NULL, 156, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:34:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:34:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '356badfc-4f24-43fd-87d8-094e2f83af02', '88edf00c-b7f3-4cdd-924b-d7ecd12a4edd', date '2026-06-24', 'nocturno', 'consumo',
  public.resolve_unidad_id('MR BOB'), NULL, 58, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:35:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:35:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '75f94967-8a92-4515-9c40-dd411ca36491', '18dd2227-99bf-431f-a3f1-b53c39c6b521', date '2026-06-24', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('LJ KELLEY'), 200, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:36:00-05', '6136', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:36:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '9e4b6b0d-ed5c-4e0e-a888-665ef4496534', '18dd2227-99bf-431f-a3f1-b53c39c6b521', date '2026-06-24', 'diurno', 'consumo',
  public.resolve_unidad_id('LJ KELLEY'), NULL, 110, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:37:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 08:37:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '9cd77281-d2b2-48e7-bd55-2711a95cd5df', 'ec558ec1-2e21-4b99-b165-c0eca5c669c6', date '2026-06-24', 'nocturno', 'consumo',
  public.resolve_unidad_id('LJ KELLEY'), NULL, 65, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:38:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 20:38:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '041bb13d-e9e9-49d3-8aa6-2af56f6caff1', 'b83858bf-55c4-41a7-bba7-7b20fbbca287', date '2026-06-25', 'diurno', 'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA') , public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 300, '{"origen":"excel","origen_texto":"LOBITOS EXPRESS CARGA","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:39:00-05', '6080', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:39:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '6ebe3a3d-4d73-4a9f-8b97-15f9f150eb38', 'b83858bf-55c4-41a7-bba7-7b20fbbca287', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), NULL, 116, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:40:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:40:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '23fbf7df-d295-411d-9d61-d383bc3dbed4', '462c5ff6-e6bd-4988-807d-577f9cdc43e1', date '2026-06-25', 'nocturno', 'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), NULL, 257, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:41:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:41:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '2bb772da-e11f-42ce-863b-edd99a04a691', 'aa12d762-c289-426a-a869-d0ec131b3a91', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('PARIÑAS'), NULL, 180, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:42:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:42:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '1308c96f-253e-48ec-aa6e-bca8873fe208', 'faaa89eb-1db0-438a-ac72-bdabe74adc8d', date '2026-06-25', 'nocturno', 'consumo',
  public.resolve_unidad_id('PARIÑAS'), NULL, 22, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:43:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:43:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '7f8a4de4-f6a9-4177-b83d-c95aefa27868', '4172cbd1-695e-4a20-a4e8-d0846d9d8e5b', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('TALARA'), NULL, 143, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:44:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:44:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '97f82736-7682-4c45-9b44-faeae8f9e534', '3fc50e6b-406b-46f8-8fd2-26fb0b4886c7', date '2026-06-25', 'nocturno', 'consumo',
  public.resolve_unidad_id('TALARA'), NULL, 20, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:45:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:45:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '07eeb817-f356-40f8-8360-423288f3adcc', '59850ca4-872b-4a06-a5ff-cb9b050abd44', date '2026-06-25', 'diurno', 'recibido',
  public.resolve_unidad_id('TALARA') , public.resolve_unidad_id('OLYMPIC'), 150, '{"origen":"excel","origen_texto":"TALARA","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:46:00-05', '5974', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:46:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '706a6421-069c-4376-a5ce-4bb3d2feeb81', '59850ca4-872b-4a06-a5ff-cb9b050abd44', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('OLYMPIC'), NULL, 147, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:47:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:47:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'e22161f5-f142-4b3b-aed6-b9d9ed134a43', '69dea11b-51f7-410b-97d4-7c6b2d8bc4da', date '2026-06-25', 'nocturno', 'consumo',
  public.resolve_unidad_id('OLYMPIC'), NULL, 12, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:48:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:48:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'fc1908d6-76c3-4084-8e4b-58a017bd99d7', '274f5b03-301e-414d-a1e5-adc6b543c2d8', date '2026-06-25', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('DONALD ROBIN'), 120, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:49:00-05', '6143', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:49:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '608a4b0e-1e35-4e40-a8b6-3678c03c1d7f', '274f5b03-301e-414d-a1e5-adc6b543c2d8', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('DONALD ROBIN'), NULL, 78, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:50:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:50:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'c78b7ff9-ca87-41c4-be68-31926ce99703', 'e1116e67-67b1-46a6-80aa-9ddc8b40741a', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('SHEILA R'), NULL, 46, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:51:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:51:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'e470cc24-0a5f-423d-92af-f595829d7253', 'd069eff6-6d9d-416b-851a-75f9ef1fa681', date '2026-06-25', 'nocturno', 'consumo',
  public.resolve_unidad_id('SHEILA R'), NULL, 52, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:52:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:52:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '8b049ad5-a80e-47de-9f58-299e768a9d51', 'd49d8c70-22e0-412d-bdb5-b0411ea5c120', date '2026-06-25', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('IRIS'), 180, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:53:00-05', '6144', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:53:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '72c4e023-d374-419d-adbf-7283e51388e3', 'd49d8c70-22e0-412d-bdb5-b0411ea5c120', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('IRIS'), NULL, 46, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:54:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:54:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '6fef087f-2a3e-492c-8f4a-e28169219da8', 'd9654972-439b-4ef6-bf12-49c91ba48e2f', date '2026-06-25', 'nocturno', 'consumo',
  public.resolve_unidad_id('IRIS'), NULL, 40, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:55:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 20:55:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'b55055aa-fc94-46dc-b86c-cd0d2866e56f', '44268834-1c09-4299-a129-6fe96ce847be', date '2026-06-25', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('ROSLYN'), 180, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:56:00-05', '6145', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:56:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'ded3d872-0ba0-4e9d-8536-8ef3fbac9e62', '44268834-1c09-4299-a129-6fe96ce847be', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('ROSLYN'), NULL, 89, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:57:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:57:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '41cbc9ca-4d6b-4a13-8307-642f83378535', '3cd21959-ba75-4069-830a-76e5585f8ab6', date '2026-06-25', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('CHIP II'), 250, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:58:00-05', '6142', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:58:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'f748e1e6-3478-4d8e-9ac9-e4c44b2b2939', '3cd21959-ba75-4069-830a-76e5585f8ab6', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('CHIP II'), NULL, 63, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:59:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 08:59:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '2b56b082-e4e7-4eca-adf2-59b8b6a0195c', 'ebb2d454-6b90-4e2e-b699-04ed9bc08f66', date '2026-06-25', 'nocturno', 'consumo',
  public.resolve_unidad_id('CHIP II'), NULL, 56, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 21:00:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 21:00:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '102f18ed-76f3-449b-ad33-e8da41038616', 'cabbb14b-2439-404e-8fc0-828801550603', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'), NULL, 16, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:01:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:01:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'a1c5cdbc-2645-4a6b-a006-96c6d0e41235', 'c04c9cc3-a68e-4f2a-979d-2b05023db2ed', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('CABO BLANCO'), NULL, 30, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:02:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:02:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '68b8a931-bdfe-4242-aa24-b2095bd002a9', 'd6ddc902-11ee-4038-9fa2-47c33fb5e40a', date '2026-06-25', 'nocturno', 'consumo',
  public.resolve_unidad_id('CABO BLANCO'), NULL, 25, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 21:03:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 21:03:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'b394537f-d2af-4ec5-8486-66ea3fd7aafc', 'f17c6da0-7e30-4b58-b431-753a1adc8fbd', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('ELIZABETH'), NULL, 32, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:04:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:04:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '28df7b3c-f226-4314-8a9c-0f1a8233d796', 'b131f308-3475-421d-bf1c-d442c19098cf', date '2026-06-25', 'nocturno', 'consumo',
  public.resolve_unidad_id('ELIZABETH'), NULL, 18, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 21:05:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 21:05:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '8ae16e28-a001-4e07-942d-4a66c4fdb557', '22948883-9f3b-4f81-928c-6a3b533afcb1', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('ORO'), NULL, 38, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:06:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:06:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'd44b2eee-f0f5-4317-9307-e26fa4df9dfa', '13babfcd-dee1-4964-8d8c-4cd4b4b605c7', date '2026-06-25', 'nocturno', 'consumo',
  public.resolve_unidad_id('ORO'), NULL, 36, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 21:07:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 21:07:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '04a2c69e-671e-48ee-85ca-853d6f9a94d7', '286f395b-3e14-4e8d-a208-5c70a97a7dc1', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('ROGUE'), NULL, 36, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:08:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:08:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '550aa031-a073-4af6-9af6-598b0f76965e', 'ef55a4fa-c430-4c5f-9287-1b52da3be725', date '2026-06-25', 'nocturno', 'consumo',
  public.resolve_unidad_id('ROGUE'), NULL, 43, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 21:09:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 21:09:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '091a3146-ed94-47c2-874d-92252b3f5e6f', '2f798624-fc3d-4338-b641-9f5c489ad5b1', date '2026-06-25', 'diurno', 'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA') , public.resolve_unidad_id('MR BOB'), 1000, '{"origen":"excel","origen_texto":"LOBITOS EXPRESS CARGA","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:10:00-05', '6079', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:10:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '776f4af9-8be9-4778-bc6b-375bec21ac26', '2f798624-fc3d-4338-b641-9f5c489ad5b1', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('MR BOB'), NULL, 153, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:11:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:11:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'aeb1e49e-0aec-411d-b4ef-cf0cd293ccde', '4b26c534-f90d-4a9d-9561-a9ee9b22636f', date '2026-06-25', 'nocturno', 'consumo',
  public.resolve_unidad_id('MR BOB'), NULL, 132, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 21:12:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 21:12:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '62976ae7-d0fb-498a-a760-a11b9fe8b0a7', '443030e4-af07-40e1-a156-4cf09f80552b', date '2026-06-25', 'diurno', 'recibido',
  public.resolve_unidad_id('TALARA') , public.resolve_unidad_id('LJ KELLEY'), 200, '{"origen":"excel","origen_texto":"TALARA","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:13:00-05', '5973', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:13:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'f1e1eba6-3956-4eb3-85e7-906d7ed72942', '443030e4-af07-40e1-a156-4cf09f80552b', date '2026-06-25', 'diurno', 'consumo',
  public.resolve_unidad_id('LJ KELLEY'), NULL, 112, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:14:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 09:14:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '78b85a8f-44e4-48fc-8df9-80964a77799a', '85935e48-f276-42a6-bcda-11091ac82a91', date '2026-06-25', 'nocturno', 'consumo',
  public.resolve_unidad_id('LJ KELLEY'), NULL, 62, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 21:15:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 21:15:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'ae8e9cb9-3eb4-4791-ae3f-9d926e007024', '30dd522c-802f-4486-8dbf-a284747a1bf6', date '2026-06-26', 'diurno', 'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA') , public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 300, '{"origen":"excel","origen_texto":"LOBITOS EXPRESS CARGA","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:16:00-05', '6081', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:16:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'b9dc14e9-0e70-4b63-bc10-fa4729fcd39d', '30dd522c-802f-4486-8dbf-a284747a1bf6', date '2026-06-26', 'diurno', 'recibido',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA') , public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 200, '{"origen":"excel","origen_texto":"LOBITOS EXPRESS CARGA","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:17:00-05', '6082', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:17:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '5dcf0de3-8e01-4086-944b-7a5a54831039', '30dd522c-802f-4486-8dbf-a284747a1bf6', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), NULL, 300, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:18:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:18:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '282f413d-0916-4c13-8f98-ea649fc859e0', '258639d7-cf02-4e17-9f3c-359c57d1c53b', date '2026-06-26', 'nocturno', 'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), NULL, 155, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:19:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:19:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '8d90ca43-d735-40a8-b0a4-ba37ef12c849', '83facad9-4297-4cc9-a54e-52ed740d1a73', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('PARIÑAS'), NULL, 189, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:20:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:20:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'f5cf7860-095e-43a0-98bc-fbd2f25bb17c', '8c6329fb-c203-4375-a9f6-65d8d5af0c65', date '2026-06-26', 'nocturno', 'consumo',
  public.resolve_unidad_id('PARIÑAS'), NULL, 15, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:21:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:21:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '39db5ded-be0e-40af-82c2-490efb811479', '5fb42474-e4ef-498e-8c62-c628fb147cb1', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('TALARA'), NULL, 224, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:22:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:22:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '9464d9d4-0f1c-44f8-b76e-870d97ce5f57', 'dbebb529-1ca9-4907-b76b-e0052bbb54a1', date '2026-06-26', 'nocturno', 'consumo',
  public.resolve_unidad_id('TALARA'), NULL, 24, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:23:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:23:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'f30e8cf2-b8a4-49a0-9cc4-ba6260d44ba8', '5d7b8f22-1873-46e5-8e47-ce7124bba72d', date '2026-06-26', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('OLYMPIC'), 150, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:24:00-05', '6148', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:24:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '5f4310ae-1105-44bf-868d-4758a75bb84c', '5d7b8f22-1873-46e5-8e47-ce7124bba72d', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('OLYMPIC'), NULL, 124, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:25:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:25:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '01717c94-f7d5-4478-a3a2-76e675fd0556', 'a542ffc1-f82a-4978-b87b-894c62b05d91', date '2026-06-26', 'nocturno', 'consumo',
  public.resolve_unidad_id('OLYMPIC'), NULL, 16, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:26:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:26:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '0a49b478-1f1b-470d-8031-b8100f8077c8', '4762f0d8-d7cb-42c9-ac6c-8b0609ec2b92', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('DONALD ROBIN'), NULL, 76, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:27:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:27:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '9655b6ec-d0a0-4ccd-ab26-289c8bd03408', 'a0747884-3790-4795-8e72-222e09af4cf7', date '2026-06-26', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('SHEILA R'), 200, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:28:00-05', '6149', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:28:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '29b1ad5d-41e7-4aee-b8c1-106a49bd23b2', 'a0747884-3790-4795-8e72-222e09af4cf7', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('SHEILA R'), NULL, 58, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:29:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:29:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '8ed7c336-b8dd-48b9-a79e-88fbe01246ec', 'fb9eca02-9c7f-4847-8e95-916105286d68', date '2026-06-26', 'nocturno', 'consumo',
  public.resolve_unidad_id('SHEILA R'), NULL, 55, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:30:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:30:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'ed40330d-8d5e-4e89-b739-423a2ee5fad7', 'e21aafaf-4fa3-48c7-83d5-0700a4d4248c', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('IRIS'), NULL, 39, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:31:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:31:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '5960af22-4d46-4413-813b-ad49e57dc71b', 'f33a9b12-8565-4aee-be69-5102a5954b81', date '2026-06-26', 'nocturno', 'consumo',
  public.resolve_unidad_id('IRIS'), NULL, 51, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:32:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:32:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '604d5ee5-8c02-44cd-a33c-aecc719784fb', '2b0cb053-af0d-4cc2-8be8-f8c3d3ee6ddb', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('ROSLYN'), NULL, 91, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:33:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:33:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '1542da86-28a2-4e71-b443-407286c162c2', '78a8b375-f298-419f-9853-834f60e8708c', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('CHIP II'), NULL, 65, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:34:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:34:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '417035af-7123-4cf1-87d3-8db186ffc233', '9989e73e-0d80-48d8-b11d-8dfe4d1f9fd6', date '2026-06-26', 'nocturno', 'consumo',
  public.resolve_unidad_id('CHIP II'), NULL, 51, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:35:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:35:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '9074e99d-5d7b-41d5-a362-21499349bcd1', 'cc69075e-447b-4861-9cc1-a6577215c073', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('CABO BLANCO'), NULL, 20, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:36:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:36:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '7edb4db9-fcae-49d4-84e0-350e7cdf3e65', '00f88765-b2cc-4173-92bd-3ac4c88558f5', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('ELIZABETH'), NULL, 20, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:37:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:37:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '2ac6fad0-b1c3-48a1-a376-da169165882f', '87a23d5c-7159-4ee4-a01b-80a72075a0d4', date '2026-06-26', 'nocturno', 'consumo',
  public.resolve_unidad_id('ELIZABETH'), NULL, 18, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:38:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:38:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'bac621c7-443b-4b3b-b528-0eb2d1ee0115', 'c5a9e8f5-16fd-480d-87f8-643ca98782de', date '2026-06-26', 'diurno', 'recibido',
  public.resolve_unidad_id('TALARA') , public.resolve_unidad_id('ORO'), 500, '{"origen":"excel","origen_texto":"TALARA","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:39:00-05', '5975', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:39:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '8d56fed5-7f25-44ac-a974-cb218e011da3', 'c5a9e8f5-16fd-480d-87f8-643ca98782de', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('ORO'), NULL, 37, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:40:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:40:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'cd151b31-585d-4f75-b394-816c4443df35', '539e3dab-c8bf-41a4-ad69-7ecca67395af', date '2026-06-26', 'nocturno', 'consumo',
  public.resolve_unidad_id('ORO'), NULL, 36, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:41:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:41:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'a125c6c0-8a54-4fbb-9d35-05e34f54a12d', '63221687-2b51-4865-bc26-84ed14c57dd7', date '2026-06-26', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('ROGUE'), 500, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:42:00-05', '6146', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:42:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '3a895fe1-70cd-463b-89a8-0736d1d871c0', '63221687-2b51-4865-bc26-84ed14c57dd7', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('ROGUE'), NULL, 36, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:43:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:43:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'b654678b-7571-4697-863b-c550dd86af4d', '262e0ae8-9b60-4895-8008-60b9b43850da', date '2026-06-26', 'nocturno', 'consumo',
  public.resolve_unidad_id('ROGUE'), NULL, 38, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:44:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:44:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'ebf661ee-96c3-4772-a194-d9c7f5a4e1ce', '2165a45e-6e2b-4f54-93cd-21a76e6acafa', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('MR BOB'), NULL, 196, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:45:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:45:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '42ec6bb9-6abb-4c25-80e3-5fd566845aac', '0dc5b079-02c7-4a17-b94d-7906315ad9d5', date '2026-06-26', 'nocturno', 'consumo',
  public.resolve_unidad_id('MR BOB'), NULL, 72, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:46:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:46:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'ebfbbc33-c836-4076-a656-8cea3806365e', 'ba4940f5-dad8-451f-8962-48b407054ef9', date '2026-06-26', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('LJ KELLEY'), 150, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:47:00-05', '6147', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:47:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '4d1a3ab7-fc3e-498b-a7c2-2be1b302d1c6', 'ba4940f5-dad8-451f-8962-48b407054ef9', date '2026-06-26', 'diurno', 'consumo',
  public.resolve_unidad_id('LJ KELLEY'), NULL, 116, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:48:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 09:48:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '9b08dbf1-89ec-48b9-a993-424a3ae07b89', '15d2e9fc-54c7-43c9-b3f1-398db3527a01', date '2026-06-26', 'nocturno', 'consumo',
  public.resolve_unidad_id('LJ KELLEY'), NULL, 88, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:49:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 21:49:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '87b6ef26-ad3c-4650-9aef-f72b1d2239ba', 'a185fd3a-83dc-4d70-8a5e-b05f41ee2a59', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), NULL, 48, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 09:50:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 09:50:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '8aee7377-9856-4e9c-921b-649fadc1a846', 'e4c7491f-bc73-4d86-9bc9-be338f4e2a20', date '2026-06-27', 'nocturno', 'consumo',
  public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), NULL, 48, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 21:51:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 21:51:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'c26a0561-eb77-49b7-aff9-de24c036f682', 'ea4dc617-bbf7-430d-99ea-6aa41a443c86', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('PARIÑAS'), NULL, 237, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 09:52:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 09:52:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'ed511cfc-dacd-438a-921c-c4fc7977c466', '169f4329-0968-40cd-b798-96deecb2dd2c', date '2026-06-27', 'nocturno', 'consumo',
  public.resolve_unidad_id('PARIÑAS'), NULL, 21, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 21:53:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 21:53:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '9baa48f4-b7d8-4084-a0b7-614cc32cf2fe', 'cb72135b-9dfc-4ca0-adb5-ba8c91cfd987', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('TALARA'), NULL, 156, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 09:54:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 09:54:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '87844e65-e04d-41ea-9005-cd8c7646564d', 'ad6d0239-ae04-4e4d-8ec3-bb8fad9c4abf', date '2026-06-27', 'nocturno', 'consumo',
  public.resolve_unidad_id('TALARA'), NULL, 16, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 21:55:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 21:55:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '4ebf8111-7dd6-4a79-bb91-d7a8211b9724', '814cc7fd-eee0-4c8e-b580-9c4777cf9273', date '2026-06-27', 'diurno', 'recibido',
  public.resolve_unidad_id('TALARA') , public.resolve_unidad_id('OLYMPIC'), 150, '{"origen":"excel","origen_texto":"TALARA","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 09:56:00-05', '5977', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 09:56:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '00464418-9c42-478e-8926-722be14ffd08', '814cc7fd-eee0-4c8e-b580-9c4777cf9273', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('OLYMPIC'), NULL, 137, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 09:57:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 09:57:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'a85f1f08-9db7-4c7e-96de-458225ab3d98', 'cedd2f23-136b-412b-aa2c-f8bab521d6f4', date '2026-06-27', 'nocturno', 'consumo',
  public.resolve_unidad_id('OLYMPIC'), NULL, 12, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 21:58:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 21:58:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '48b563be-d94a-42d5-8dfa-52305add172c', '61e964bc-f3e2-46f0-9979-8e23f52a7ac8', date '2026-06-27', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('DONALD ROBIN'), 120, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 09:59:00-05', '6152', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 09:59:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'bd56e4cd-b54d-4b69-881c-c2d8a86b827a', '61e964bc-f3e2-46f0-9979-8e23f52a7ac8', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('DONALD ROBIN'), NULL, 78, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:00:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:00:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'dd3d4fd6-a71d-4739-bb24-df10b58ba720', '54a07850-9b43-4427-8625-988dc24189ff', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('SHEILA R'), NULL, 59, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:01:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:01:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '2fecb396-760a-4cf7-aeff-f063e87f6d62', 'd8cd4c8d-557d-498c-805a-c2f4540c0ad5', date '2026-06-27', 'nocturno', 'consumo',
  public.resolve_unidad_id('SHEILA R'), NULL, 40, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:02:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:02:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '12b23f7e-e1b3-4f0d-a7dc-f973b08bdec5', 'e6192cdd-f9ef-4e3a-bbcd-7dc4d57eb0a5', date '2026-06-27', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('IRIS'), 184, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:03:00-05', '6154', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:03:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '59160da6-117b-4197-8fa8-6939066c874d', 'e6192cdd-f9ef-4e3a-bbcd-7dc4d57eb0a5', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('IRIS'), NULL, 54, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:04:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:04:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '87f48110-45bc-450c-b623-5133e01c5f13', 'a9ce45c0-122b-440f-ba8e-b14457f51643', date '2026-06-27', 'nocturno', 'consumo',
  public.resolve_unidad_id('IRIS'), NULL, 45, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:05:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:05:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '473c950e-e93d-4804-beef-bac6afeb75db', '7e7ec61b-4b5e-4222-992a-1bab1d2e6344', date '2026-06-27', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('ROSLYN'), 130, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:06:00-05', '6153', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:06:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'aa58a6a0-4e2a-4100-9b3b-35c7316bfbc3', '7e7ec61b-4b5e-4222-992a-1bab1d2e6344', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('ROSLYN'), NULL, 85, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:07:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:07:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '497a9bdb-6dea-4af4-98ee-d021e3bbee1c', '03f7b3f2-2d87-4e01-8b68-8e64ee045e77', date '2026-06-27', 'diurno', 'recibido',
  public.resolve_unidad_id('PARIÑAS') , public.resolve_unidad_id('CHIP II'), 250, '{"origen":"excel","origen_texto":"PARIÑAS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:08:00-05', '6151', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:08:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '14d24941-af49-441a-96ae-f204440b0806', '03f7b3f2-2d87-4e01-8b68-8e64ee045e77', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('CHIP II'), NULL, 69, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:09:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:09:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '7dfad0ea-7052-4897-8797-22d93c8d5ccb', '70e4214b-880d-4d4c-b607-1a8f2eb4bb01', date '2026-06-27', 'nocturno', 'consumo',
  public.resolve_unidad_id('CHIP II'), NULL, 56, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:10:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:10:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'e8c76d46-42e8-42ce-8a9f-61d53a494ea0', '739e61ff-3857-43c1-b6a1-78e4b5908eb8', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('BUCKLEY EXPRESS'), NULL, 7, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:11:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:11:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'bf35effa-7890-4096-8307-0abe26549d09', '5305c530-a834-421a-9aef-668c475230e6', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('CABO BLANCO'), NULL, 45, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:12:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:12:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '4846a69c-d723-41c4-a746-8456eddee0c2', 'c8491e18-6afd-46f6-8020-4379bd6e25f1', date '2026-06-27', 'nocturno', 'consumo',
  public.resolve_unidad_id('ELIZABETH'), NULL, 18, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:13:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:13:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '20cd0c7a-4b00-444a-af6f-d4b7dce3f3ef', '3eb79d44-92f1-4cd1-921b-affbf9848f68', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('ORO'), NULL, 40, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:14:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:14:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'babc3079-3916-4b0a-84a8-0a56b48df1e6', '478a63e8-116b-4278-8da4-ecf928b74df0', date '2026-06-27', 'nocturno', 'consumo',
  public.resolve_unidad_id('ORO'), NULL, 36, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:15:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:15:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'ae8944ce-f2aa-4a1f-a346-5d97f4b4ee43', 'b1839178-9d7c-4fbc-817f-7cc64b12bfad', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('ROGUE'), NULL, 36, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:16:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:16:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '891c7fe0-88fc-4346-b381-0da26bfad9f8', '721b73a6-d922-40a0-81a0-4695a227774b', date '2026-06-27', 'nocturno', 'consumo',
  public.resolve_unidad_id('ROGUE'), NULL, 43, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:17:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:17:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'c62e920b-c660-4dbc-b37b-fb01dc540f6c', '4b04731c-1370-48cd-b6eb-44b551665ccb', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('MR BOB'), NULL, 107, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:18:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:18:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '2934e995-693b-4f7f-a6a5-fbfb5ab8554a', 'b8806685-ea06-4baf-9fee-88c38f05dcdb', date '2026-06-27', 'nocturno', 'consumo',
  public.resolve_unidad_id('MR BOB'), NULL, 45, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:19:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:19:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '66b47984-29e7-420a-8a5a-eb3a198fdb6e', '9445d94e-aa13-48c4-b100-018cb56e59fd', date '2026-06-27', 'diurno', 'recibido',
  public.resolve_unidad_id('TALARA') , public.resolve_unidad_id('LJ KELLEY'), 200, '{"origen":"excel","origen_texto":"TALARA","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:20:00-05', '5976', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:20:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '7ec3c5dc-323a-4487-9f4a-4b2b4b9129d4', '9445d94e-aa13-48c4-b100-018cb56e59fd', date '2026-06-27', 'diurno', 'consumo',
  public.resolve_unidad_id('LJ KELLEY'), NULL, 118, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:21:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:21:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '9f6c2eae-2fd4-45d1-9fe8-7dc37bb762c0', 'c37c5855-89a0-425e-b2a4-16c0b89f053e', date '2026-06-27', 'nocturno', 'consumo',
  public.resolve_unidad_id('LJ KELLEY'), NULL, 87, '{"origen":"excel","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:22:00-05', NULL, '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 22:22:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'bffd800a-4322-4175-9617-610544eb2381', 'bca79f08-99b5-4beb-a163-657e23bba535', date '2026-06-24', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('SHEILA R'), 200, '{"origen":"excel","destino_texto":"SHEILA R","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:23:00-05', '6134', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:23:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '63712171-d6c7-4c5a-b8fb-46a7ba10ab60', 'bca79f08-99b5-4beb-a163-657e23bba535', date '2026-06-24', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('CABO BLANCO'), 150, '{"origen":"excel","destino_texto":"CABO BLANCO","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:24:00-05', '6135', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:24:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'c3f9a325-1c60-43d2-a37a-5368ea0d8541', 'bca79f08-99b5-4beb-a163-657e23bba535', date '2026-06-24', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('LJ KELLEY'), 200, '{"origen":"excel","destino_texto":"LJ KELLEY","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:25:00-05', '6136', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:25:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '0f9b8cc2-253a-41e7-84c9-7c037ada447c', 'bca79f08-99b5-4beb-a163-657e23bba535', date '2026-06-24', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('OLYMPIC'), 150, '{"origen":"excel","destino_texto":"OLYMPIC","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:26:00-05', '6137', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:26:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '529b291f-5ccb-4e1a-876b-aca0bb7ccec4', 'bca79f08-99b5-4beb-a163-657e23bba535', date '2026-06-24', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('ELIZABETH'), 500, '{"origen":"excel","destino_texto":"ELIZABETH","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:27:00-05', '6138', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:27:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'bd6c90a9-7abf-43da-9fc6-74dc00fc94cc', 'bca79f08-99b5-4beb-a163-657e23bba535', date '2026-06-24', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), 1057, '{"origen":"excel","destino_texto":"LOBITOS EXPRESS CARGA","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:28:00-05', '6139', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:28:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'a92a2035-ba7b-4295-847c-61c39f0b3665', 'bca79f08-99b5-4beb-a163-657e23bba535', date '2026-06-24', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('TALARA'), 1760, '{"origen":"excel","destino_texto":"TALARA","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:29:00-05', '6140', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:29:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '66aeead2-a35a-46bd-97af-a4f3ceb4620c', 'ff55aa6b-eb34-41e3-be34-11c967574286', date '2026-06-24', 'diurno', 'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 150, '{"origen":"excel","destino_texto":"LOBITOS EXPRESS CONSUMO","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:30:00-05', '6077', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:30:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'ca82497f-3d16-44eb-a543-e14e3af6b7f2', 'ff55aa6b-eb34-41e3-be34-11c967574286', date '2026-06-24', 'diurno', 'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 200, '{"origen":"excel","destino_texto":"LOBITOS EXPRESS CONSUMO","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:31:00-05', '6078', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-24 10:31:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '8c32edc2-a7c9-49b0-a1e1-0f3f8c25f424', 'de5cb96c-4d2a-4d9a-89c0-6d8c2295b7ae', date '2026-06-25', 'diurno', 'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), public.resolve_unidad_id('MR BOB'), 1000, '{"origen":"excel","destino_texto":"MR BOB","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:32:00-05', '6079', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:32:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '83ac4711-39a7-42a5-aa96-b6d7c61f15c9', 'de5cb96c-4d2a-4d9a-89c0-6d8c2295b7ae', date '2026-06-25', 'diurno', 'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 300, '{"origen":"excel","destino_texto":"LOBITOS EXPRESS CONSUMO","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:33:00-05', '6080', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:33:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'dea2106c-7a43-4eb6-90dc-bbcdabac7026', '22948883-9f3b-4f81-928c-6a3b533afcb1', date '2026-06-25', 'diurno', 'despacho',
  public.resolve_unidad_id('ORO'), public.resolve_unidad_id('KK'), 4, '{"origen":"excel","destino_texto":"KK","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:34:00-05', '81462', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:34:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '034beb4f-0034-4b9d-ae29-ef71fb186454', 'aa12d762-c289-426a-a869-d0ec131b3a91', date '2026-06-25', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('CHIP II'), 250, '{"origen":"excel","destino_texto":"CHIP II","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:35:00-05', '6142', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:35:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '148fcc48-6d64-4d02-8a08-83072d39e652', 'aa12d762-c289-426a-a869-d0ec131b3a91', date '2026-06-25', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('DONALD ROBIN'), 120, '{"origen":"excel","destino_texto":"DONALD ROBIN","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:36:00-05', '6143', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:36:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '57934a27-7cd9-47b2-ac7d-9dd66a54786f', 'aa12d762-c289-426a-a869-d0ec131b3a91', date '2026-06-25', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('IRIS'), 180, '{"origen":"excel","destino_texto":"IRIS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:37:00-05', '6144', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:37:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '72781ed7-e827-4ba2-b760-565e45a5249a', 'aa12d762-c289-426a-a869-d0ec131b3a91', date '2026-06-25', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('ROSLYN'), 180, '{"origen":"excel","destino_texto":"ROSLYN","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:38:00-05', '6145', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:38:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '35ac1b86-ed1c-41f3-8980-d89c34f4d3c2', '4172cbd1-695e-4a20-a4e8-d0846d9d8e5b', date '2026-06-25', 'diurno', 'despacho',
  public.resolve_unidad_id('TALARA'), public.resolve_unidad_id('LJ KELLEY'), 200, '{"origen":"excel","destino_texto":"LJ KELLEY","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:39:00-05', '5973', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:39:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '1ac47b6c-de02-44eb-a53f-ac14b7d4ad4e', '4172cbd1-695e-4a20-a4e8-d0846d9d8e5b', date '2026-06-25', 'diurno', 'despacho',
  public.resolve_unidad_id('TALARA'), public.resolve_unidad_id('OLYMPIC'), 150, '{"origen":"excel","destino_texto":"OLYMPIC","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:40:00-05', '5974', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-25 10:40:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '2a1a7fe3-1f0d-4a99-9c66-89e9833a8eee', '63221687-2b51-4865-bc26-84ed14c57dd7', date '2026-06-26', 'diurno', 'despacho',
  public.resolve_unidad_id('ROGUE'), public.resolve_unidad_id('LO6'), 2, '{"origen":"excel","destino_texto":"LO6","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:41:00-05', '80258', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:41:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '0b3e5934-a824-4ad9-b060-a1135a75e617', '9b718cad-285f-48ed-97ba-d8cfe97e128a', date '2026-06-26', 'diurno', 'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 300, '{"origen":"excel","destino_texto":"LOBITOS EXPRESS CONSUMO","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:42:00-05', '6081', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:42:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '1f92b75e-fc05-4583-8377-bfb362752f7a', '9b718cad-285f-48ed-97ba-d8cfe97e128a', date '2026-06-26', 'diurno', 'despacho',
  public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), 200, '{"origen":"excel","destino_texto":"LOBITOS EXPRESS CONSUMO","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:43:00-05', '6082', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:43:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'ec64ec04-0475-4fb8-ab7b-d0ffe2aec2aa', '83facad9-4297-4cc9-a54e-52ed740d1a73', date '2026-06-26', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('ROGUE'), 500, '{"origen":"excel","destino_texto":"ROGUE","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:44:00-05', '6146', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:44:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '04660acc-e583-4885-8ba4-b42c5e40aed1', '83facad9-4297-4cc9-a54e-52ed740d1a73', date '2026-06-26', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('LJ KELLEY'), 150, '{"origen":"excel","destino_texto":"LJ KELLEY","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:45:00-05', '6147', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:45:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '481bf470-f4f4-40d8-84ce-e45cbb8652ec', '83facad9-4297-4cc9-a54e-52ed740d1a73', date '2026-06-26', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('OLYMPIC'), 150, '{"origen":"excel","destino_texto":"OLYMPIC","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:46:00-05', '6148', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:46:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '858c8cd3-625e-41c5-bcb9-1fb0319b72b6', '83facad9-4297-4cc9-a54e-52ed740d1a73', date '2026-06-26', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('SHEILA R'), 200, '{"origen":"excel","destino_texto":"SHEILA R","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:47:00-05', '6149', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:47:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '368578ca-1e77-47e9-bfd2-ea216a9ff40e', '5fb42474-e4ef-498e-8c62-c628fb147cb1', date '2026-06-26', 'diurno', 'despacho',
  public.resolve_unidad_id('TALARA'), public.resolve_unidad_id('ORO'), 500, '{"origen":"excel","destino_texto":"ORO","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:48:00-05', '5975', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-26 10:48:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'cae389b4-5a80-4c22-ae15-068ea7cbe7fa', 'ea4dc617-bbf7-430d-99ea-6aa41a443c86', date '2026-06-27', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('CHIP II'), 250, '{"origen":"excel","destino_texto":"CHIP II","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:49:00-05', '6151', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:49:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '0bee8e72-05bf-4649-868e-0d4fa9e6b1e7', 'ea4dc617-bbf7-430d-99ea-6aa41a443c86', date '2026-06-27', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('DONALD ROBIN'), 120, '{"origen":"excel","destino_texto":"DONALD ROBIN","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:50:00-05', '6152', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:50:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '18bb7ccb-a6ed-45e6-a4c9-590fa5b37b68', 'ea4dc617-bbf7-430d-99ea-6aa41a443c86', date '2026-06-27', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('ROSLYN'), 130, '{"origen":"excel","destino_texto":"ROSLYN","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:51:00-05', '6153', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:51:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'deefb4f1-b0ad-43ca-aaf9-f08d03a786ff', 'ea4dc617-bbf7-430d-99ea-6aa41a443c86', date '2026-06-27', 'diurno', 'despacho',
  public.resolve_unidad_id('PARIÑAS'), public.resolve_unidad_id('IRIS'), 184, '{"origen":"excel","destino_texto":"IRIS","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:52:00-05', '6154', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:52:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'a55c654c-62fa-47e8-891b-6bbc71406f3b', 'cb72135b-9dfc-4ca0-adb5-ba8c91cfd987', date '2026-06-27', 'diurno', 'despacho',
  public.resolve_unidad_id('TALARA'), public.resolve_unidad_id('LJ KELLEY'), 200, '{"origen":"excel","destino_texto":"LJ KELLEY","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:53:00-05', '5976', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:53:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '1acbccf8-1267-47ce-b99b-5116bf56b608', 'cb72135b-9dfc-4ca0-adb5-ba8c91cfd987', date '2026-06-27', 'diurno', 'despacho',
  public.resolve_unidad_id('TALARA'), public.resolve_unidad_id('OLYMPIC'), 150, '{"origen":"excel","destino_texto":"OLYMPIC","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:54:00-05', '5977', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:54:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  'f7a3d96e-c6b6-46b5-955b-a172aaa1a5f9', 'b1839178-9d7c-4fbc-817f-7cc64b12bfad', date '2026-06-27', 'diurno', 'despacho',
  public.resolve_unidad_id('ROGUE'), public.resolve_unidad_id('LO6'), 2, '{"origen":"excel","destino_texto":"LO6","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:55:00-05', '80260', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:55:00-05'
);
insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (
  '62da1f7b-959b-4256-bd54-396c072523c7', 'b1839178-9d7c-4fbc-817f-7cc64b12bfad', date '2026-06-27', 'diurno', 'despacho',
  public.resolve_unidad_id('ROGUE'), public.resolve_unidad_id('LO16'), 2, '{"origen":"excel","destino_texto":"LO16","archivo":"data de junio.xlsx"}'::jsonb, 'vigente', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:56:00-05', '80261', '1fc59be2-4ba7-40b6-9659-767e0b6311df', '2026-06-27 10:56:00-05'
);

select public.recalcular_diesel_kardex(id) from public.diesel_kardex where fecha between date '2026-06-24' and date '2026-06-27';
select public.recalcular_diesel_historial(public.resolve_unidad_id('BUCKLEY EXPRESS'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('CABO BLANCO'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('CHIP II'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('DONALD ROBIN'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ELIZABETH'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('IRIS'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('LJ KELLEY'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('MR BOB'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('OLYMPIC'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ORO'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('PARIÑAS'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ROGUE'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('ROSLYN'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('SHEILA R'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('TALARA'), date '2026-06-24', 'diurno');
select public.recalcular_diesel_historial(public.resolve_unidad_id('VILMA'), date '2026-06-24', 'diurno');
commit;