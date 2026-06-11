do $$
declare
  v_carga_id uuid := public.resolve_unidad_id('LOBITOS EXPRESS (CARGA)');
  v_consumo_id uuid := public.resolve_unidad_id('LOBITOS EXPRESS (CONSUMO)');
  v_fecha_inicio date := date '2026-06-01';
  v_fecha_fin date := date '2026-06-08';
  v_kardex_id uuid;
  v_carry numeric(14,3);
  v_item record;
begin
  if v_carga_id is null or v_consumo_id is null then
    raise exception 'No se encontraron las unidades LOBITOS EXPRESS CARGA/CONSUMO.';
  end if;

  create temp table tmp_lobitos_split_turnos (
    fecha date,
    unidad_id uuid,
    turno text,
    stock_inicial numeric,
    capitan text,
    motorista text,
    consumo numeric,
    recibido numeric,
    recibido_de text,
    entregado_sin_detalle numeric
  ) on commit drop;

  insert into tmp_lobitos_split_turnos values
    ('2026-06-01', v_carga_id, 'diurno',   19600, 'IVAN CASTILLO',            'JUAN MORE',                 0,   0,   null, 0),
    ('2026-06-01', v_carga_id, 'nocturno', null,  'ANDRES YENQUE',            'JORGE FLORES',              0,   0,   null, 0),
    ('2026-06-02', v_carga_id, 'diurno',   null,  'JUAN GONZALES ALVARADO',   'ALEXANDER MORALES CASTRO',  0,   0,   null, 0),
    ('2026-06-02', v_carga_id, 'nocturno', null,  'IVAN CASTILLO',            'JUAN MORE',                 0,   0,   null, 0),
    ('2026-06-03', v_carga_id, 'diurno',   null,  'JUAN GONZALES ALVARADO',   'ALEXANDER MORALES CASTRO',  0,   0,   null, 0),
    ('2026-06-03', v_carga_id, 'nocturno', null,  'IVAN CASTILLO',            'JUAN MORE',                 0,   0,   null, 0),
    ('2026-06-04', v_carga_id, 'diurno',   null,  'JUAN GONZALES ALVARADO',   'ALEXANDER MORALES CASTRO',  0,   0,   null, 0),
    ('2026-06-04', v_carga_id, 'nocturno', null,  'IVAN CASTILLO',            'JUAN MORE',                 0,   0,   null, 0),
    ('2026-06-05', v_carga_id, 'diurno',   null,  'JUAN GONZALES ALVARADO',   'ALEXANDER MORALES CASTRO',  0,   0,   null, 0),
    ('2026-06-05', v_carga_id, 'nocturno', null,  'IVAN CASTILLO',            'JUAN MORE',                 0,   0,   null, 0),
    ('2026-06-06', v_carga_id, 'diurno',   null,  'JUAN GONZALES ALVARADO',   'ALEXANDER MORALES CASTRO',  0,   0,   null, 0),
    ('2026-06-06', v_carga_id, 'nocturno', null,  'IVAN CASTILLO',            'JUAN MORE',                 0,   0,   null, 0),
    ('2026-06-07', v_carga_id, 'diurno',   null,  'JUAN GONZALES ALVARADO',   'ALEXANDER MORALES CASTRO',  0,   0,   null, 0),
    ('2026-06-07', v_carga_id, 'nocturno', null,  'IVAN CASTILLO',            'JUAN MORE',                 0,   0,   null, 0),
    ('2026-06-08', v_carga_id, 'diurno',   null,  'JUAN GONZALES ALVARADO',   'ALEXANDER MORALES CASTRO',  0,   0,   null, 1700),
    ('2026-06-08', v_carga_id, 'nocturno', null,  'IVAN CASTILLO',            'JUAN MORE',                 0,   0,   null, 0),

    ('2026-06-01', v_consumo_id, 'diurno',   2627, null, null,  52, 0,   null, 0),
    ('2026-06-01', v_consumo_id, 'nocturno', null, null, null,  48, 0,   null, 0),
    ('2026-06-02', v_consumo_id, 'diurno',   null, null, null,  48, 200, 'LOBITOS EXPRESS CARGA', 0),
    ('2026-06-02', v_consumo_id, 'nocturno', null, null, null,  48, 0,   null, 0),
    ('2026-06-03', v_consumo_id, 'diurno',   null, null, null,  52, 0,   null, 0),
    ('2026-06-03', v_consumo_id, 'nocturno', null, null, null,  48, 0,   null, 0),
    ('2026-06-04', v_consumo_id, 'diurno',   null, null, null,  48, 200, 'LOBITOS EXPRESS CARGA', 0),
    ('2026-06-04', v_consumo_id, 'nocturno', null, null, null,  48, 0,   null, 0),
    ('2026-06-05', v_consumo_id, 'diurno',   null, null, null,  48, 200, 'LOBITOS EXPRESS CARGA', 0),
    ('2026-06-05', v_consumo_id, 'nocturno', null, null, null,  84, 0,   null, 0),
    ('2026-06-06', v_consumo_id, 'diurno',   null, null, null, 208, 200, 'LOBITOS EXPRESS CARGA', 0),
    ('2026-06-06', v_consumo_id, 'nocturno', null, null, null,  90, 0,   null, 0),
    ('2026-06-07', v_consumo_id, 'diurno',   null, null, null,  48, 200, 'LOBITOS EXPRESS CARGA', 0),
    ('2026-06-07', v_consumo_id, 'nocturno', null, null, null,  57, 0,   null, 0),
    ('2026-06-08', v_consumo_id, 'diurno',   null, null, null,  48, 0,   null, 0),
    ('2026-06-08', v_consumo_id, 'nocturno', null, null, null,  48, 0,   null, 0);

  insert into public.diesel_kardex (
    fecha, unidad_id, turno, nave_origen_id, stock_inicial, stock_final,
    total_recarga, total_despacho, total_transferencia, total_consumo,
    sondaje_reingreso, sondaje_diferencia, capitan_turno, motorista_turno,
    modulos_estado, cabecera, tiene_movimiento, estado
  )
  select
    fecha,
    unidad_id,
    turno,
    unidad_id,
    coalesce(stock_inicial, 0),
    coalesce(stock_inicial, 0),
    0, 0, 0, 0, 0, 0,
    capitan,
    motorista,
    '{}'::jsonb,
    '{}'::jsonb,
    false,
    'vigente'
  from tmp_lobitos_split_turnos
  on conflict (fecha, unidad_id, turno)
  do update set
    nave_origen_id = excluded.nave_origen_id,
    capitan_turno = excluded.capitan_turno,
    motorista_turno = excluded.motorista_turno,
    estado = 'vigente',
    anulado_at = null,
    anulado_por = null,
    updated_at = now();

  update public.diesel_movimientos m
  set estado = 'anulado',
      detalle = coalesce(m.detalle, '{}'::jsonb)
        || jsonb_build_object('anulado_por_correccion', 'lobitos_carga_consumo_split_20260609'),
      updated_at = now()
  where m.estado = 'vigente'
    and m.fecha between v_fecha_inicio and v_fecha_fin
    and (
      (
        m.nave_origen_id = v_carga_id
        and lower(m.tipo) = 'consumo'
      )
      or m.detalle ->> 'origen' = 'lobitos_carga_consumo_split_20260609'
    );

  for v_item in
    select * from tmp_lobitos_split_turnos order by fecha, unidad_id, public.diesel_turno_orden(turno)
  loop
    select id
    into v_kardex_id
    from public.diesel_kardex
    where fecha = v_item.fecha
      and unidad_id = v_item.unidad_id
      and turno = v_item.turno
      and estado = 'vigente';

    if coalesce(v_item.consumo, 0) <> 0 then
      insert into public.diesel_movimientos (
        kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id,
        cantidad, n_vale, detalle, estado
      )
      values (
        v_kardex_id, v_item.fecha, v_item.turno, 'consumo', v_item.unidad_id, null,
        v_item.consumo, null,
        jsonb_build_object('origen', 'lobitos_carga_consumo_split_20260609', 'archivo', 'data lobitos express y carga.xlsx'),
        'vigente'
      );
    end if;

    if coalesce(v_item.recibido, 0) <> 0 and v_item.unidad_id = v_consumo_id then
      insert into public.diesel_movimientos (
        kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id,
        cantidad, n_vale, detalle, estado
      )
      values (
        v_kardex_id, v_item.fecha, v_item.turno, 'recibido', v_carga_id, v_consumo_id,
        v_item.recibido, null,
        jsonb_build_object(
          'origen', 'lobitos_carga_consumo_split_20260609',
          'archivo', 'data lobitos express y carga.xlsx',
          'origen_texto', 'LOBITOS EXPRESS CARGA'
        ),
        'vigente'
      );

      select id
      into v_kardex_id
      from public.diesel_kardex
      where fecha = v_item.fecha
        and unidad_id = v_carga_id
        and turno = v_item.turno
        and estado = 'vigente';

      insert into public.diesel_movimientos (
        kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id,
        cantidad, n_vale, detalle, estado
      )
      values (
        v_kardex_id, v_item.fecha, v_item.turno, 'despacho', v_carga_id, v_consumo_id,
        v_item.recibido, null,
        jsonb_build_object(
          'origen', 'lobitos_carga_consumo_split_20260609',
          'archivo', 'data lobitos express y carga.xlsx',
          'destino_texto', 'LOBITOS EXPRESS CONSUMO'
        ),
        'vigente'
      );
    end if;

    if coalesce(v_item.entregado_sin_detalle, 0) <> 0 and v_item.unidad_id = v_carga_id then
      insert into public.diesel_movimientos (
        kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id,
        cantidad, n_vale, detalle, estado
      )
      values (
        v_kardex_id, v_item.fecha, v_item.turno, 'despacho', v_carga_id, null,
        v_item.entregado_sin_detalle, null,
        jsonb_build_object(
          'origen', 'lobitos_carga_consumo_split_20260609',
          'archivo', 'data lobitos express y carga.xlsx',
          'destino_texto', 'SIN DETALLE'
        ),
        'vigente'
      );
    end if;
  end loop;

  update public.diesel_kardex k
  set stock_inicial = t.stock_inicial,
      updated_at = now()
  from tmp_lobitos_split_turnos t
  where k.fecha = t.fecha
    and k.unidad_id = t.unidad_id
    and k.turno = t.turno
    and t.stock_inicial is not null;

  v_carry := 19600;
  for v_item in
    select id
    from public.diesel_kardex
    where unidad_id = v_carga_id
      and estado = 'vigente'
      and fecha >= v_fecha_inicio
    order by fecha, public.diesel_turno_orden(turno), created_at
  loop
    update public.diesel_kardex
    set stock_inicial = v_carry,
        updated_at = now()
    where id = v_item.id;

    perform public.recalcular_diesel_kardex(v_item.id);

    select stock_final
    into v_carry
    from public.diesel_kardex
    where id = v_item.id;
  end loop;

  v_carry := 2627;
  for v_item in
    select id
    from public.diesel_kardex
    where unidad_id = v_consumo_id
      and estado = 'vigente'
      and fecha >= v_fecha_inicio
    order by fecha, public.diesel_turno_orden(turno), created_at
  loop
    update public.diesel_kardex
    set stock_inicial = v_carry,
        updated_at = now()
    where id = v_item.id;

    perform public.recalcular_diesel_kardex(v_item.id);

    select stock_final
    into v_carry
    from public.diesel_kardex
    where id = v_item.id;
  end loop;
end;
$$;

comment on table public.diesel_kardex is
  'Kardex diesel por unidad, fecha y turno. Correccion 2026-06-09 separa LOBITOS EXPRESS CARGA y CONSUMO segun data lobitos express y carga.xlsx.';
