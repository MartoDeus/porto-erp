insert into public.unidades (codigo, nombre, tipo, orden)
values
  ('DONALD_ROBIN', 'DONALD ROBIN', 'nave', 20),
  ('VILMA', 'VILMA', 'nave', 21),
  ('ROSLYN', 'ROSLYN', 'nave', 22),
  ('ELIZABETH', 'ELIZABETH', 'nave', 23),
  ('ORO', 'ORO', 'nave', 24),
  ('ROGUE', 'ROGUE', 'nave', 25),
  ('MR_BOB', 'MR BOB', 'nave', 26)
on conflict (codigo) do update set
  nombre = excluded.nombre,
  tipo = excluded.tipo,
  orden = excluded.orden;

create or replace function public.resolve_unidad_id(value text)
returns uuid
language sql
stable
security definer
set search_path = public
as $$
  with input_value as (
    select
      public.normalize_erp_text(value) as value_norm,
      regexp_replace(public.normalize_erp_text(value), '(_EXPRESS)$', '') as value_base
  )
  select u.id
  from public.unidades u
  cross join input_value i
  where public.normalize_erp_text(u.nombre) = i.value_norm
     or public.normalize_erp_text(u.codigo) = i.value_norm
     or regexp_replace(public.normalize_erp_text(u.nombre), '(_EXPRESS)$', '') = i.value_base
     or regexp_replace(public.normalize_erp_text(u.codigo), '(_EXPRESS)$', '') = i.value_base
  order by
    case
      when public.normalize_erp_text(u.nombre) = i.value_norm
        or public.normalize_erp_text(u.codigo) = i.value_norm then 0
      else 1
    end,
    u.orden,
    u.nombre
  limit 1;
$$;

grant execute on function public.resolve_unidad_id(text) to authenticated;

create or replace function public.registrar_diesel(payload jsonb)
returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  v_fecha date;
  v_turno text;
  v_unidad_id uuid;
  v_unidad_nombre text;
  v_kardex_id uuid;
  v_existing public.diesel_kardex%rowtype;
  v_previous record;
  v_modulos jsonb;
  v_mod_recarga boolean;
  v_mod_consumo boolean;
  v_mod_sondaje boolean;
  v_mod_tripulacion boolean;
  v_mod_despacho boolean;
  v_modo text;
  v_stock_inicial numeric(14,3);
  v_total_recarga numeric(14,3);
  v_total_consumo numeric(14,3);
  v_total_despacho numeric(14,3);
  v_total_transferencia numeric(14,3);
  v_reingreso numeric(14,3);
  v_diferencia numeric(14,3);
  v_recibido_de text;
  v_movement jsonb;
  v_destino_id uuid;
  v_destino_nombre text;
  v_destino_kardex_id uuid;
  v_destino_existing public.diesel_kardex%rowtype;
  v_destino_previous record;
  v_destino_stock_inicial numeric(14,3);
  v_tipo text;
  v_cantidad numeric(14,3);
  v_affected_destinos uuid[] := '{}';
  v_movimientos_reemplazar uuid[] := '{}';
  v_movimiento_origen_id uuid;
begin
  if auth.uid() is null then
    raise exception 'Usuario no autenticado.';
  end if;

  if public.current_user_role() not in ('administrador', 'supervisor', 'coordinador', 'controlador') then
    raise exception 'No tienes permiso para registrar diesel.';
  end if;

  v_fecha := (payload ->> 'fecha')::date;
  v_turno := lower(coalesce(payload ->> 'turno', ''));
  v_unidad_id := public.resolve_unidad_id(payload ->> 'nave');
  v_modulos := coalesce(payload -> 'modulos_estado', '{}'::jsonb);
  v_modo := lower(coalesce(payload ->> 'modo', 'agregar'));

  if jsonb_typeof(coalesce(payload -> 'movimiento_ids_reemplazar', '[]'::jsonb)) = 'array' then
    select coalesce(array_agg(value::uuid), '{}')
    into v_movimientos_reemplazar
    from jsonb_array_elements_text(coalesce(payload -> 'movimiento_ids_reemplazar', '[]'::jsonb));
  end if;

  if v_fecha is null or v_turno = '' or v_unidad_id is null then
    raise exception 'Fecha, nave y turno son obligatorios.';
  end if;

  select nombre into v_unidad_nombre
  from public.unidades
  where id = v_unidad_id;

  v_mod_recarga := coalesce((v_modulos ->> 'recarga')::boolean, false);
  v_mod_consumo := coalesce((v_modulos ->> 'consumo')::boolean, false);
  v_mod_sondaje := coalesce((v_modulos ->> 'sondaje')::boolean, false);
  v_mod_tripulacion := coalesce((v_modulos ->> 'tripulacion')::boolean, false);
  v_mod_despacho := coalesce((v_modulos ->> 'despacho')::boolean, false);

  if v_mod_despacho
    and jsonb_array_length(coalesce(payload -> 'movimientos', '[]'::jsonb)) > 0
    and not public.is_diesel_mother_ship(v_unidad_id) then
    raise exception 'Solo TALARA, PARIÑAS y LOBITOS EXPRESS CARGA pueden despachar diesel.';
  end if;

  select *
  into v_existing
  from public.diesel_kardex
  where fecha = v_fecha
    and unidad_id = v_unidad_id
    and turno = v_turno
    and estado = 'vigente'
  limit 1;

  select k.stock_final
  into v_previous
  from public.diesel_kardex k
  where k.unidad_id = v_unidad_id
    and k.estado = 'vigente'
    and not (k.fecha = v_fecha and k.turno = v_turno)
    and (
      k.fecha < v_fecha
      or (
        k.fecha = v_fecha
        and public.diesel_turno_orden(k.turno) < public.diesel_turno_orden(v_turno)
      )
    )
  order by k.fecha desc, public.diesel_turno_orden(k.turno) desc, k.updated_at desc
  limit 1;

  v_stock_inicial := coalesce(v_existing.stock_inicial, v_previous.stock_final, (payload ->> 'stock_inicial')::numeric, 0);
  v_total_recarga := case when v_mod_recarga then coalesce((payload ->> 'recarga')::numeric, 0) else coalesce(v_existing.total_recarga, 0) end;
  v_total_consumo := case when v_mod_consumo then coalesce((payload ->> 'consumo')::numeric, 0) else coalesce(v_existing.total_consumo, 0) end;
  v_reingreso := case when v_mod_sondaje then coalesce((payload ->> 'reingreso')::numeric, 0) else coalesce(v_existing.sondaje_reingreso, 0) end;
  v_diferencia := case when v_mod_sondaje then coalesce((payload ->> 'diferencia')::numeric, 0) else coalesce(v_existing.sondaje_diferencia, 0) end;

  if v_reingreso > 0 and v_diferencia > 0 then
    raise exception 'Reingreso y diferencia no pueden coexistir.';
  end if;

  v_total_despacho := coalesce(v_existing.total_despacho, 0);
  v_total_transferencia := coalesce(v_existing.total_transferencia, 0);

  if v_mod_despacho then
    for v_movement in
      select value from jsonb_array_elements(coalesce(payload -> 'movimientos', '[]'::jsonb))
    loop
      v_destino_id := public.resolve_unidad_id(v_movement ->> 'destino');
      v_cantidad := coalesce((v_movement ->> 'cantidad')::numeric, 0);

      if v_destino_id is not null and public.is_diesel_mother_ship(v_unidad_id) and public.is_diesel_mother_ship(v_destino_id) then
        v_total_transferencia := v_total_transferencia + v_cantidad;
      else
        v_total_despacho := v_total_despacho + v_cantidad;
      end if;
    end loop;
  end if;

  v_recibido_de := coalesce(v_existing.recibido_de, nullif(payload ->> 'recibido_de', ''));
  if v_mod_recarga and v_total_recarga > 0 and public.normalize_erp_text(v_unidad_nombre) in ('TALARA', 'PARINAS') then
    v_recibido_de := 'Amarradero NÂº 4';
  end if;

  insert into public.diesel_kardex (
    fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id,
    stock_inicial, stock_final, total_recarga, total_recibido, recibido_de,
    total_despacho, total_transferencia, total_consumo,
    sondaje_reingreso, sondaje_diferencia,
    capitan_turno, motorista_turno, acta_sondaje,
    n_vale_recarga, n_vale_despacho,
    modulos_estado, cabecera, observaciones, tiene_movimiento,
    estado, created_by, updated_by
  )
  values (
    v_fecha, v_unidad_id, v_turno, auth.uid(), v_unidad_id,
    v_stock_inicial, v_stock_inicial, v_total_recarga, coalesce(v_existing.total_recibido, 0), v_recibido_de,
    v_total_despacho, v_total_transferencia, v_total_consumo,
    v_reingreso, v_diferencia,
    case when v_mod_tripulacion then nullif(payload ->> 'capitan', '') else v_existing.capitan_turno end,
    case when v_mod_tripulacion then nullif(payload ->> 'motorista', '') else v_existing.motorista_turno end,
    case when v_mod_sondaje then nullif(payload ->> 'acta_sondaje', '') else v_existing.acta_sondaje end,
    case when v_mod_recarga then nullif(payload ->> 'vale_recarga', '') else v_existing.n_vale_recarga end,
    case when v_mod_despacho then nullif(payload ->> 'vale_despacho', '') else v_existing.n_vale_despacho end,
    v_modulos,
    coalesce(payload -> 'cabecera', v_existing.cabecera, '{}'::jsonb),
    coalesce(nullif(payload ->> 'observaciones', ''), v_existing.observaciones),
    true,
    'vigente', coalesce(v_existing.created_by, auth.uid()), auth.uid()
  )
  on conflict (fecha, unidad_id, turno) where estado <> 'anulado'
  do update set
    usuario_registrador_id = excluded.usuario_registrador_id,
    nave_origen_id = excluded.nave_origen_id,
    stock_inicial = excluded.stock_inicial,
    total_recarga = excluded.total_recarga,
    recibido_de = excluded.recibido_de,
    total_despacho = excluded.total_despacho,
    total_transferencia = excluded.total_transferencia,
    total_consumo = excluded.total_consumo,
    sondaje_reingreso = excluded.sondaje_reingreso,
    sondaje_diferencia = excluded.sondaje_diferencia,
    capitan_turno = excluded.capitan_turno,
    motorista_turno = excluded.motorista_turno,
    acta_sondaje = excluded.acta_sondaje,
    n_vale_recarga = excluded.n_vale_recarga,
    n_vale_despacho = excluded.n_vale_despacho,
    modulos_estado = excluded.modulos_estado,
    cabecera = excluded.cabecera,
    observaciones = excluded.observaciones,
    updated_by = auth.uid(),
    updated_at = now()
  returning id into v_kardex_id;

  if v_mod_recarga then
    update public.diesel_movimientos
    set estado = 'anulado', anulado_at = now(), anulado_por = auth.uid(), updated_by = auth.uid(), updated_at = now()
    where kardex_id = v_kardex_id and estado = 'vigente' and lower(tipo) = 'recarga';

    if v_total_recarga > 0 then
      insert into public.diesel_movimientos (
        kardex_id, fecha, turno, tipo, nave_destino_id, cantidad, n_vale, detalle, estado, created_by, updated_by
      )
      values (
        v_kardex_id, v_fecha, v_turno, 'recarga', v_unidad_id, v_total_recarga, nullif(payload ->> 'vale_recarga', ''),
        jsonb_build_object('origen_texto', v_recibido_de, 'origen', 'web'), 'vigente', auth.uid(), auth.uid()
      );
    end if;
  end if;

  if v_mod_consumo then
    update public.diesel_movimientos
    set estado = 'anulado', anulado_at = now(), anulado_por = auth.uid(), updated_by = auth.uid(), updated_at = now()
    where kardex_id = v_kardex_id and estado = 'vigente' and lower(tipo) = 'consumo';

    if v_total_consumo > 0 then
      insert into public.diesel_movimientos (
        kardex_id, fecha, turno, tipo, nave_origen_id, cantidad, detalle, estado, created_by, updated_by
      )
      values (
        v_kardex_id, v_fecha, v_turno, 'consumo', v_unidad_id, v_total_consumo,
        jsonb_build_object('origen', 'web'), 'vigente', auth.uid(), auth.uid()
      );
    end if;
  end if;

  if v_mod_sondaje then
    update public.diesel_movimientos
    set estado = 'anulado', anulado_at = now(), anulado_por = auth.uid(), updated_by = auth.uid(), updated_at = now()
    where kardex_id = v_kardex_id
      and estado = 'vigente'
      and lower(tipo) in ('reingreso sondaje', 'diferencia sondaje', 'sondaje');

    if (v_reingreso - v_diferencia) <> 0 then
      insert into public.diesel_movimientos (
        kardex_id, fecha, turno, tipo, nave_origen_id, cantidad, detalle, estado, created_by, updated_by
      )
      values (
        v_kardex_id, v_fecha, v_turno,
        case when v_reingreso > 0 then 'reingreso sondaje' else 'diferencia sondaje' end,
        v_unidad_id, abs(v_reingreso - v_diferencia),
        jsonb_build_object('acta_sondaje', payload ->> 'acta_sondaje', 'signo', case when v_reingreso > 0 then 1 else -1 end),
        'vigente', auth.uid(), auth.uid()
      );
    end if;
  end if;

  if v_mod_despacho and v_modo = 'editar' then
    select coalesce(array_agg(distinct recibido.kardex_id), '{}')
    into v_affected_destinos
    from public.diesel_movimientos origen
    left join public.diesel_movimientos recibido
      on recibido.estado = 'vigente'
      and lower(recibido.tipo) = 'recibido'
      and recibido.detalle ->> 'source_movimiento_id' = origen.id::text
    where origen.estado = 'vigente'
      and origen.kardex_id = v_kardex_id
      and lower(origen.tipo) in ('despacho', 'transferencia')
      and (
        cardinality(v_movimientos_reemplazar) = 0
        or origen.id = any(v_movimientos_reemplazar)
      );

    update public.diesel_movimientos movimientos
    set estado = 'anulado',
        anulado_at = now(),
        anulado_por = auth.uid(),
        updated_by = auth.uid(),
        updated_at = now()
    where movimientos.estado = 'vigente'
      and (
        (
          movimientos.kardex_id = v_kardex_id
          and lower(movimientos.tipo) in ('despacho', 'transferencia')
          and (
            cardinality(v_movimientos_reemplazar) = 0
            or movimientos.id = any(v_movimientos_reemplazar)
          )
        )
        or (
          lower(movimientos.tipo) = 'recibido'
          and exists (
            select 1
            from public.diesel_movimientos origen
            where origen.estado = 'vigente'
              and origen.kardex_id = v_kardex_id
              and lower(origen.tipo) in ('despacho', 'transferencia')
              and movimientos.detalle ->> 'source_movimiento_id' = origen.id::text
              and (
                cardinality(v_movimientos_reemplazar) = 0
                or origen.id = any(v_movimientos_reemplazar)
              )
          )
        )
      );
  end if;

  if v_mod_despacho then
    for v_movement in
      select value from jsonb_array_elements(coalesce(payload -> 'movimientos', '[]'::jsonb))
    loop
      v_destino_id := public.resolve_unidad_id(v_movement ->> 'destino');
      v_cantidad := coalesce((v_movement ->> 'cantidad')::numeric, 0);

      if v_destino_id is null or v_cantidad <= 0 then
        continue;
      end if;

      select nombre into v_destino_nombre from public.unidades where id = v_destino_id;
      v_tipo := case
        when public.is_diesel_mother_ship(v_unidad_id) and public.is_diesel_mother_ship(v_destino_id) then 'transferencia'
        else 'despacho'
      end;

      insert into public.diesel_movimientos (
        kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id,
        cantidad, n_vale, detalle, estado, created_by, updated_by
      )
      values (
        v_kardex_id, v_fecha, v_turno, v_tipo, v_unidad_id, v_destino_id,
        v_cantidad, nullif(v_movement ->> 'vale', ''),
        jsonb_build_object('destino_texto', v_destino_nombre, 'origen', 'web'),
        'vigente', auth.uid(), auth.uid()
      )
      returning id into v_movimiento_origen_id;

      select *
      into v_destino_existing
      from public.diesel_kardex
      where fecha = v_fecha
        and unidad_id = v_destino_id
        and turno = v_turno
        and estado = 'vigente'
      limit 1;

      select k.stock_final
      into v_destino_previous
      from public.diesel_kardex k
      where k.unidad_id = v_destino_id
        and k.estado = 'vigente'
        and not (k.fecha = v_fecha and k.turno = v_turno)
        and (
          k.fecha < v_fecha
          or (
            k.fecha = v_fecha
            and public.diesel_turno_orden(k.turno) < public.diesel_turno_orden(v_turno)
          )
        )
      order by k.fecha desc, public.diesel_turno_orden(k.turno) desc, k.updated_at desc
      limit 1;

      v_destino_stock_inicial := coalesce(v_destino_existing.stock_inicial, v_destino_previous.stock_final, 0);

      insert into public.diesel_kardex (
        fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id,
        stock_inicial, stock_final, total_recarga, total_recibido, recibido_de,
        total_despacho, total_transferencia, total_consumo,
        sondaje_reingreso, sondaje_diferencia,
        capitan_turno, motorista_turno, acta_sondaje,
        n_vale_recarga, n_vale_despacho,
        modulos_estado, cabecera, observaciones, tiene_movimiento,
        estado, created_by, updated_by
      )
      values (
        v_fecha, v_destino_id, v_turno, auth.uid(), v_unidad_id,
        v_destino_stock_inicial, v_destino_stock_inicial, coalesce(v_destino_existing.total_recarga, 0), 0, v_unidad_nombre,
        coalesce(v_destino_existing.total_despacho, 0), coalesce(v_destino_existing.total_transferencia, 0), coalesce(v_destino_existing.total_consumo, 0),
        coalesce(v_destino_existing.sondaje_reingreso, 0), coalesce(v_destino_existing.sondaje_diferencia, 0),
        v_destino_existing.capitan_turno, v_destino_existing.motorista_turno, v_destino_existing.acta_sondaje,
        v_destino_existing.n_vale_recarga, nullif(v_movement ->> 'vale', ''),
        coalesce(v_destino_existing.modulos_estado, '{}'::jsonb), coalesce(v_destino_existing.cabecera, '{}'::jsonb),
        v_destino_existing.observaciones, true,
        'vigente', coalesce(v_destino_existing.created_by, auth.uid()), auth.uid()
      )
      on conflict (fecha, unidad_id, turno) where estado <> 'anulado'
      do update set
        usuario_registrador_id = excluded.usuario_registrador_id,
        nave_origen_id = excluded.nave_origen_id,
        n_vale_despacho = excluded.n_vale_despacho,
        updated_by = auth.uid(),
        updated_at = now()
      returning id into v_destino_kardex_id;

      insert into public.diesel_movimientos (
        kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id,
        cantidad, n_vale, detalle, estado, created_by, updated_by
      )
      values (
        v_destino_kardex_id, v_fecha, v_turno, 'recibido', v_unidad_id, v_destino_id,
        v_cantidad, nullif(v_movement ->> 'vale', ''),
        jsonb_build_object(
          'source_kardex_id', v_kardex_id::text,
          'source_movimiento_id', v_movimiento_origen_id::text,
          'origen_texto', v_unidad_nombre,
          'origen', 'web'
        ),
        'vigente', auth.uid(), auth.uid()
      );

      v_affected_destinos := array_append(v_affected_destinos, v_destino_kardex_id);
    end loop;
  end if;

  perform public.recalcular_diesel_kardex(v_kardex_id);

  if v_mod_despacho and cardinality(v_affected_destinos) > 0 then
    perform public.recalcular_diesel_kardex(destino_id)
    from unnest(v_affected_destinos) as destino_id;
  end if;

  return v_kardex_id;
end;
$$;

grant execute on function public.registrar_diesel(jsonb) to authenticated;

comment on function public.registrar_diesel(jsonb) is
  'Diesel save allows dispatch/transfer only from mother ships and resolves catalog aliases without duplicating units.';
