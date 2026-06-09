create or replace function public.is_diesel_dispatcher_ship(p_unidad_id uuid)
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select exists (
    select 1
    from public.unidades u
    where u.id = p_unidad_id
      and public.normalize_erp_text(u.nombre) in (
        'TALARA',
        'PARINAS',
        'LOBITOS_EXPRESS_CARGA',
        'ORO',
        'ROGUE',
        'MR_BOB'
      )
  );
$$;

grant execute on function public.is_diesel_dispatcher_ship(uuid) to authenticated;

do $$
declare
  function_sql text;
begin
  function_sql := pg_get_functiondef('public.registrar_diesel(jsonb)'::regprocedure);
  function_sql := regexp_replace(
    function_sql,
    $pattern$
  if v_mod_despacho\s+
    and jsonb_array_length\(coalesce\(payload -> 'movimientos', '\[\]'::jsonb\)\) > 0\s+
    and not public\.is_diesel_mother_ship\(v_unidad_id\) then\s+
    raise exception '[^']*';\s+
  end if;
$pattern$,
    $replacement$
  if v_mod_despacho
    and jsonb_array_length(coalesce(payload -> 'movimientos', '[]'::jsonb)) > 0
    and not public.is_diesel_dispatcher_ship(v_unidad_id) then
    raise exception 'Solo naves abastecedoras y barcazas pueden despachar diesel.';
  end if;
$replacement$,
    'm'
  );
  execute function_sql;
end $$;

comment on function public.registrar_diesel(jsonb) is
  'Diesel save allows dispatch from mother ships and barcazas; transfer remains only between mother ships.';

do $$
declare
  r record;
  v_origin_kardex_id uuid;
  v_origin_name text;
  v_destino_name text;
  v_existing_dispatch_id uuid;
  v_previous_stock numeric(14,3);
begin
  for r in
    select m.*
    from public.diesel_movimientos m
    join public.unidades origen on origen.id = m.nave_origen_id
    where m.estado = 'vigente'
      and lower(m.tipo) = 'recibido'
      and public.normalize_erp_text(origen.nombre) in ('ORO', 'ROGUE', 'MR_BOB')
  loop
    select nombre into v_origin_name
    from public.unidades
    where id = r.nave_origen_id;

    select nombre into v_destino_name
    from public.unidades
    where id = r.nave_destino_id;

    select id
    into v_origin_kardex_id
    from public.diesel_kardex
    where fecha = r.fecha
      and unidad_id = r.nave_origen_id
      and turno = r.turno
      and estado = 'vigente'
    limit 1;

    if v_origin_kardex_id is null then
      select stock_final
      into v_previous_stock
      from public.diesel_kardex
      where unidad_id = r.nave_origen_id
        and estado = 'vigente'
        and (
          fecha < r.fecha
          or (
            fecha = r.fecha
            and public.diesel_turno_orden(turno) < public.diesel_turno_orden(r.turno)
          )
        )
      order by fecha desc, public.diesel_turno_orden(turno) desc, updated_at desc
      limit 1;

      insert into public.diesel_kardex (
        fecha,
        unidad_id,
        turno,
        usuario_registrador_id,
        nave_origen_id,
        stock_inicial,
        stock_final,
        total_recarga,
        total_recibido,
        recibido_de,
        total_despacho,
        total_transferencia,
        total_consumo,
        sondaje_reingreso,
        sondaje_diferencia,
        modulos_estado,
        cabecera,
        tiene_movimiento,
        estado,
        created_by,
        updated_by
      )
      values (
        r.fecha,
        r.nave_origen_id,
        r.turno,
        r.created_by,
        r.nave_origen_id,
        coalesce(v_previous_stock, 0),
        coalesce(v_previous_stock, 0),
        0,
        0,
        null,
        0,
        0,
        0,
        0,
        0,
        jsonb_build_object('despacho', true),
        jsonb_build_object('origen', 'barcaza_repair'),
        true,
        'vigente',
        r.created_by,
        r.updated_by
      )
      returning id into v_origin_kardex_id;
    end if;

    select id
    into v_existing_dispatch_id
    from public.diesel_movimientos
    where estado = 'vigente'
      and lower(tipo) = 'despacho'
      and fecha = r.fecha
      and turno = r.turno
      and nave_origen_id = r.nave_origen_id
      and nave_destino_id = r.nave_destino_id
      and cantidad = r.cantidad
      and coalesce(n_vale, '') = coalesce(r.n_vale, '')
    limit 1;

    if v_existing_dispatch_id is null then
      insert into public.diesel_movimientos (
        kardex_id,
        fecha,
        turno,
        tipo,
        nave_origen_id,
        nave_destino_id,
        cantidad,
        n_vale,
        detalle,
        estado,
        created_by,
        updated_by
      )
      values (
        v_origin_kardex_id,
        r.fecha,
        r.turno,
        'despacho',
        r.nave_origen_id,
        r.nave_destino_id,
        r.cantidad,
        r.n_vale,
        jsonb_build_object(
          'destino_texto', v_destino_name,
          'origen', 'barcaza_repair',
          'source_recibido_id', r.id::text
        ),
        'vigente',
        r.created_by,
        r.updated_by
      )
      returning id into v_existing_dispatch_id;
    end if;

    update public.diesel_movimientos
    set detalle = coalesce(detalle, '{}'::jsonb)
      || jsonb_build_object(
        'source_movimiento_id', v_existing_dispatch_id::text,
        'source_kardex_id', v_origin_kardex_id::text,
        'origen_texto', v_origin_name
      ),
      updated_at = now()
    where id = r.id;

    perform public.recalcular_diesel_historial(r.nave_origen_id, r.fecha, r.turno);
    perform public.recalcular_diesel_historial(r.nave_destino_id, r.fecha, r.turno);
  end loop;
end $$;
