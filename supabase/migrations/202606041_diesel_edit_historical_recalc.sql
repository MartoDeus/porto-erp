create or replace function public.recalcular_diesel_historial(
  p_unidad_id uuid,
  p_fecha date,
  p_turno text default 'diurno'
)
returns void
language plpgsql
security definer
set search_path = public
as $$
declare
  v_turno text := lower(coalesce(p_turno, 'diurno'));
  v_carry numeric(14,3);
  v_item record;
begin
  if p_unidad_id is null or p_fecha is null then
    return;
  end if;

  select k.stock_final
  into v_carry
  from public.diesel_kardex k
  where k.unidad_id = p_unidad_id
    and k.estado = 'vigente'
    and (
      k.fecha < p_fecha
      or (
        k.fecha = p_fecha
        and public.diesel_turno_orden(k.turno) < public.diesel_turno_orden(v_turno)
      )
    )
  order by k.fecha desc, public.diesel_turno_orden(k.turno) desc, k.updated_at desc
  limit 1;

  for v_item in
    select k.id, k.stock_inicial
    from public.diesel_kardex k
    where k.unidad_id = p_unidad_id
      and k.estado = 'vigente'
      and (
        k.fecha > p_fecha
        or (
          k.fecha = p_fecha
          and public.diesel_turno_orden(k.turno) >= public.diesel_turno_orden(v_turno)
        )
      )
    order by k.fecha asc, public.diesel_turno_orden(k.turno) asc, k.created_at asc
  loop
    update public.diesel_kardex
    set stock_inicial = coalesce(v_carry, v_item.stock_inicial),
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

grant execute on function public.recalcular_diesel_historial(uuid, date, text) to authenticated;

create or replace function public.editar_diesel_registro(payload jsonb)
returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  v_fecha date;
  v_turno text;
  v_unidad_id uuid;
  v_kardex_id uuid;
  v_result_id uuid;
  v_existing_mov_ids uuid[] := '{}';
  v_affected_units uuid[] := '{}';
  v_movement jsonb;
  v_destino_id uuid;
begin
  if auth.uid() is null then
    raise exception 'Usuario no autenticado.';
  end if;

  if public.current_user_role() not in ('administrador', 'supervisor', 'coordinador', 'controlador') then
    raise exception 'No tienes permiso para editar diesel.';
  end if;

  v_fecha := (payload ->> 'fecha')::date;
  v_turno := lower(coalesce(payload ->> 'turno', ''));
  v_unidad_id := public.resolve_unidad_id(payload ->> 'nave');

  if v_fecha is null or v_turno = '' or v_unidad_id is null then
    raise exception 'Fecha, nave y turno son obligatorios.';
  end if;

  select id
  into v_kardex_id
  from public.diesel_kardex
  where fecha = v_fecha
    and unidad_id = v_unidad_id
    and turno = v_turno
    and estado = 'vigente'
  limit 1;

  if v_kardex_id is not null then
    select coalesce(array_agg(id), '{}')
    into v_existing_mov_ids
    from public.diesel_movimientos
    where kardex_id = v_kardex_id
      and estado = 'vigente'
      and lower(tipo) in ('despacho', 'transferencia');

    select coalesce(array_agg(distinct nave_destino_id), '{}')
    into v_affected_units
    from public.diesel_movimientos
    where kardex_id = v_kardex_id
      and estado = 'vigente'
      and lower(tipo) in ('despacho', 'transferencia')
      and nave_destino_id is not null;
  end if;

  for v_movement in
    select value from jsonb_array_elements(coalesce(payload -> 'movimientos', '[]'::jsonb))
  loop
    v_destino_id := public.resolve_unidad_id(v_movement ->> 'destino');
    if v_destino_id is not null then
      v_affected_units := array_append(v_affected_units, v_destino_id);
    end if;
  end loop;

  v_result_id := public.registrar_diesel(
    payload
    || jsonb_build_object(
      'modo', 'editar',
      'movimiento_ids_reemplazar', to_jsonb(v_existing_mov_ids)
    )
  );

  perform public.recalcular_diesel_historial(v_unidad_id, v_fecha, v_turno);

  if cardinality(v_affected_units) > 0 then
    perform public.recalcular_diesel_historial(destino_id, v_fecha, v_turno)
    from unnest(v_affected_units) as destino_id
    where destino_id is not null;
  end if;

  return v_result_id;
end;
$$;

grant execute on function public.editar_diesel_registro(jsonb) to authenticated;

comment on function public.editar_diesel_registro(jsonb) is
  'Edits one diesel shift, replaces its edited movements and recalculates stock history from that date/shift forward.';
