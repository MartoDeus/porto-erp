-- Diesel register engine.
-- Saves the operational header and transactional movements as one unit.

alter table public.diesel_kardex
  add column if not exists capitan_turno text,
  add column if not exists motorista_turno text,
  add column if not exists acta_sondaje text,
  add column if not exists n_vale_recarga text,
  add column if not exists n_vale_despacho text,
  add column if not exists anulado_at timestamptz,
  add column if not exists anulado_por uuid references public.perfiles(id);

alter table public.diesel_movimientos
  add column if not exists n_vale text,
  add column if not exists updated_by uuid references public.perfiles(id),
  add column if not exists updated_at timestamptz not null default now(),
  add column if not exists anulado_at timestamptz,
  add column if not exists anulado_por uuid references public.perfiles(id);

create unique index if not exists diesel_kardex_fecha_unidad_turno_uidx
  on public.diesel_kardex(fecha, unidad_id, turno)
  where estado <> 'anulado';

create index if not exists diesel_kardex_estado_fecha_idx
  on public.diesel_kardex(estado, fecha);

create index if not exists diesel_movimientos_kardex_estado_idx
  on public.diesel_movimientos(kardex_id, estado);

create or replace function public.normalize_erp_text(value text)
returns text
language sql
immutable
as $$
  select upper(
    trim(both '_' from translate(
      regexp_replace(coalesce(value, ''), '[^[:alnum:]]+', '_', 'g'),
      'ÁÉÍÓÚÜÑáéíóúüñ',
      'AEIOUUNAEIOUUN'
    ))
  );
$$;

create or replace function public.resolve_unidad_id(value text)
returns uuid
language sql
stable
security definer
set search_path = public
as $$
  select u.id
  from public.unidades u
  where public.normalize_erp_text(u.nombre) = public.normalize_erp_text(value)
     or public.normalize_erp_text(u.codigo) = public.normalize_erp_text(value)
  order by u.orden, u.nombre
  limit 1;
$$;

create or replace function public.diesel_turno_orden(value text)
returns integer
language sql
immutable
as $$
  select case public.normalize_erp_text(value)
    when 'DIURNO' then 1
    when 'DIA' then 1
    when 'NOCTURNO' then 2
    when 'NOCHE' then 2
    else 99
  end;
$$;

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
  v_kardex_id uuid;
  v_stock_inicial numeric(14,3);
  v_stock_final numeric(14,3);
  v_total_recarga numeric(14,3);
  v_total_recibido numeric(14,3);
  v_total_consumo numeric(14,3);
  v_total_despacho numeric(14,3);
  v_total_transferencia numeric(14,3);
  v_reingreso numeric(14,3);
  v_diferencia numeric(14,3);
  v_sondaje numeric(14,3);
  v_has_movement boolean;
  v_previous record;
  v_movement jsonb;
  v_destino_id uuid;
  v_tipo text;
  v_cantidad numeric(14,3);
begin
  if auth.uid() is null then
    raise exception 'Usuario no autenticado.';
  end if;

  if public.current_user_role() not in ('administrador', 'supervisor', 'controlador') then
    raise exception 'No tienes permiso para registrar diesel.';
  end if;

  v_fecha := (payload ->> 'fecha')::date;
  v_turno := lower(coalesce(payload ->> 'turno', ''));
  v_unidad_id := public.resolve_unidad_id(payload ->> 'nave');

  if v_fecha is null or v_turno = '' or v_unidad_id is null then
    raise exception 'Fecha, nave y turno son obligatorios.';
  end if;

  v_total_recarga := coalesce((payload ->> 'recarga')::numeric, 0);
  v_total_consumo := coalesce((payload ->> 'consumo')::numeric, 0);
  v_reingreso := coalesce((payload ->> 'reingreso')::numeric, 0);
  v_diferencia := coalesce((payload ->> 'diferencia')::numeric, 0);

  if v_reingreso > 0 and v_diferencia > 0 then
    raise exception 'Reingreso y diferencia no pueden coexistir.';
  end if;

  select k.stock_final
  into v_previous
  from public.diesel_kardex k
  where k.unidad_id = v_unidad_id
    and k.estado = 'vigente'
    and (
      k.fecha < v_fecha
      or (
        k.fecha = v_fecha
        and public.diesel_turno_orden(k.turno) < public.diesel_turno_orden(v_turno)
      )
    )
  order by k.fecha desc, public.diesel_turno_orden(k.turno) desc, k.updated_at desc
  limit 1;

  v_stock_inicial := coalesce(v_previous.stock_final, (payload ->> 'stock_inicial')::numeric, 0);
  v_total_despacho := 0;
  v_total_transferencia := 0;

  for v_movement in
    select value from jsonb_array_elements(coalesce(payload -> 'movimientos', '[]'::jsonb))
  loop
    v_tipo := coalesce(v_movement ->> 'tipo', 'Despacho');
    v_cantidad := coalesce((v_movement ->> 'cantidad')::numeric, 0);

    if public.normalize_erp_text(v_tipo) = 'TRANSFERENCIA' then
      v_total_transferencia := v_total_transferencia + v_cantidad;
    else
      v_total_despacho := v_total_despacho + v_cantidad;
    end if;
  end loop;

  v_total_recibido := coalesce((payload ->> 'recibido')::numeric, 0);
  v_sondaje := v_reingreso - v_diferencia;
  v_stock_final :=
    v_stock_inicial
    + v_total_recarga
    + v_total_recibido
    + v_reingreso
    - v_total_consumo
    - v_total_despacho
    - v_total_transferencia
    - v_diferencia;

  v_has_movement := (
    v_total_recarga <> 0
    or v_total_recibido <> 0
    or v_total_consumo <> 0
    or v_total_despacho <> 0
    or v_total_transferencia <> 0
    or v_reingreso <> 0
    or v_diferencia <> 0
  );

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
    capitan_turno,
    motorista_turno,
    acta_sondaje,
    n_vale_recarga,
    n_vale_despacho,
    modulos_estado,
    cabecera,
    observaciones,
    tiene_movimiento,
    estado,
    created_by,
    updated_by
  )
  values (
    v_fecha,
    v_unidad_id,
    v_turno,
    auth.uid(),
    v_unidad_id,
    v_stock_inicial,
    v_stock_final,
    v_total_recarga,
    v_total_recibido,
    nullif(payload ->> 'recibido_de', ''),
    v_total_despacho,
    v_total_transferencia,
    v_total_consumo,
    v_reingreso,
    v_diferencia,
    nullif(payload ->> 'capitan', ''),
    nullif(payload ->> 'motorista', ''),
    nullif(payload ->> 'acta_sondaje', ''),
    nullif(payload ->> 'vale_recarga', ''),
    nullif(payload ->> 'vale_despacho', ''),
    coalesce(payload -> 'modulos_estado', '{}'::jsonb),
    coalesce(payload -> 'cabecera', '{}'::jsonb),
    nullif(payload ->> 'observaciones', ''),
    v_has_movement,
    'vigente',
    auth.uid(),
    auth.uid()
  )
  on conflict (fecha, unidad_id, turno) where estado <> 'anulado'
  do update set
    usuario_registrador_id = excluded.usuario_registrador_id,
    nave_origen_id = excluded.nave_origen_id,
    stock_inicial = excluded.stock_inicial,
    stock_final = excluded.stock_final,
    total_recarga = excluded.total_recarga,
    total_recibido = excluded.total_recibido,
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
    tiene_movimiento = excluded.tiene_movimiento,
    updated_by = auth.uid(),
    updated_at = now()
  returning id into v_kardex_id;

  update public.diesel_movimientos
  set estado = 'anulado',
      anulado_at = now(),
      anulado_por = auth.uid(),
      updated_by = auth.uid(),
      updated_at = now()
  where kardex_id = v_kardex_id
    and estado = 'vigente';

  if v_total_recarga <> 0 then
    insert into public.diesel_movimientos (
      kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id,
      cantidad, n_vale, detalle, estado, created_by, updated_by
    )
    values (
      v_kardex_id, v_fecha, v_turno, 'Recarga', null, v_unidad_id,
      v_total_recarga, nullif(payload ->> 'vale_recarga', ''),
      jsonb_build_object('origen', 'web'), 'vigente', auth.uid(), auth.uid()
    );
  end if;

  for v_movement in
    select value from jsonb_array_elements(coalesce(payload -> 'movimientos', '[]'::jsonb))
  loop
    v_destino_id := public.resolve_unidad_id(v_movement ->> 'destino');
    v_tipo := coalesce(v_movement ->> 'tipo', 'Despacho');
    v_cantidad := coalesce((v_movement ->> 'cantidad')::numeric, 0);

    if v_cantidad > 0 then
      insert into public.diesel_movimientos (
        kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id,
        cantidad, n_vale, detalle, estado, created_by, updated_by
      )
      values (
        v_kardex_id, v_fecha, v_turno, v_tipo, v_unidad_id, v_destino_id,
        v_cantidad, nullif(v_movement ->> 'vale', ''),
        jsonb_build_object('destino_texto', v_movement ->> 'destino', 'origen', 'web'),
        'vigente', auth.uid(), auth.uid()
      );
    end if;
  end loop;

  if v_total_consumo <> 0 then
    insert into public.diesel_movimientos (
      kardex_id, fecha, turno, tipo, nave_origen_id, cantidad,
      detalle, estado, created_by, updated_by
    )
    values (
      v_kardex_id, v_fecha, v_turno, 'Consumo', v_unidad_id, v_total_consumo,
      jsonb_build_object('origen', 'web'), 'vigente', auth.uid(), auth.uid()
    );
  end if;

  if v_sondaje <> 0 then
    insert into public.diesel_movimientos (
      kardex_id, fecha, turno, tipo, nave_origen_id, cantidad,
      detalle, estado, created_by, updated_by
    )
    values (
      v_kardex_id, v_fecha, v_turno,
      case when v_sondaje > 0 then 'Reingreso Sondaje' else 'Diferencia Sondaje' end,
      v_unidad_id, abs(v_sondaje),
      jsonb_build_object('acta_sondaje', payload ->> 'acta_sondaje', 'signo', case when v_sondaje > 0 then 1 else -1 end),
      'vigente', auth.uid(), auth.uid()
    );
  end if;

  return v_kardex_id;
end;
$$;

grant usage on schema public to authenticated;
grant select, insert on table public.diesel_kardex to authenticated;
grant select, insert on table public.diesel_movimientos to authenticated;
grant update (
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
  capitan_turno,
  motorista_turno,
  acta_sondaje,
  n_vale_recarga,
  n_vale_despacho,
  modulos_estado,
  cabecera,
  observaciones,
  tiene_movimiento,
  estado,
  updated_by,
  updated_at,
  anulado_at,
  anulado_por
) on table public.diesel_kardex to authenticated;
grant update (
  estado,
  updated_by,
  updated_at,
  anulado_at,
  anulado_por
) on table public.diesel_movimientos to authenticated;
grant execute on function public.registrar_diesel(jsonb) to authenticated;

drop policy if exists diesel_kardex_select_operativos on public.diesel_kardex;
create policy diesel_kardex_select_operativos
on public.diesel_kardex
for select
to authenticated
using (public.current_user_role() in ('administrador', 'supervisor', 'controlador', 'analista'));

drop policy if exists diesel_movimientos_select_operativos on public.diesel_movimientos;
create policy diesel_movimientos_select_operativos
on public.diesel_movimientos
for select
to authenticated
using (public.current_user_role() in ('administrador', 'supervisor', 'controlador', 'analista'));

comment on function public.registrar_diesel(jsonb) is
  'Stores diesel header and movement detail. Replaces existing movement detail by marking old rows as anulado, never physical delete.';
