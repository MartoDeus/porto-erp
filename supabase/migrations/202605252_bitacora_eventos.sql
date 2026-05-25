-- Bitacora rapida and event classification.
-- Operators register raw events; supervisors/coordinators classify them later.

insert into public.roles (codigo, nombre, descripcion)
values ('coordinador', 'Coordinador', 'Clasificacion y coordinacion de eventos operativos')
on conflict (codigo) do update set
  nombre = excluded.nombre,
  descripcion = excluded.descripcion;

create table if not exists public.bitacora_tipos_evento (
  codigo text primary key,
  nombre text not null,
  orden int not null default 0,
  activo boolean not null default true,
  created_at timestamptz not null default now()
);

create table if not exists public.bitacora_categorias (
  id uuid primary key default gen_random_uuid(),
  codigo text not null unique,
  nombre text not null,
  orden int not null default 0,
  activo boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.bitacora_eventos (
  id uuid primary key default gen_random_uuid(),
  fecha date not null,
  hora_inicio time not null,
  hora_fin time,
  unidad_id uuid references public.unidades(id),
  nave_texto text not null,
  tipo_evento text references public.bitacora_tipos_evento(codigo),
  descripcion text not null check (char_length(trim(descripcion)) > 0),
  categoria_id uuid references public.bitacora_categorias(id),
  estado text not null default 'pendiente_clasificar'
    check (estado in ('pendiente_clasificar', 'clasificado', 'validado', 'observado', 'anulado')),
  clasificado_por uuid references public.perfiles(id),
  clasificado_at timestamptz,
  validado_por uuid references public.perfiles(id),
  validado_at timestamptz,
  observacion_supervisor text,
  detalle jsonb not null default '{}'::jsonb,
  created_by uuid references public.perfiles(id),
  updated_by uuid references public.perfiles(id),
  anulado_at timestamptz,
  anulado_por uuid references public.perfiles(id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint bitacora_horas_chk check (hora_fin is null or hora_fin >= hora_inicio)
);

create index if not exists bitacora_eventos_fecha_idx
  on public.bitacora_eventos(fecha desc, hora_inicio desc);

create index if not exists bitacora_eventos_estado_idx
  on public.bitacora_eventos(estado);

create index if not exists bitacora_eventos_unidad_idx
  on public.bitacora_eventos(unidad_id);

drop trigger if exists bitacora_categorias_set_updated_at on public.bitacora_categorias;
create trigger bitacora_categorias_set_updated_at
before update on public.bitacora_categorias
for each row execute function public.set_updated_at();

drop trigger if exists bitacora_eventos_set_updated_at on public.bitacora_eventos;
create trigger bitacora_eventos_set_updated_at
before update on public.bitacora_eventos
for each row execute function public.set_updated_at();

alter table public.bitacora_tipos_evento enable row level security;
alter table public.bitacora_categorias enable row level security;
alter table public.bitacora_eventos enable row level security;

insert into public.bitacora_tipos_evento (codigo, nombre, orden) values
  ('sin_tipo', 'Sin tipo', 0),
  ('diesel', 'Diesel', 1),
  ('maniobra', 'Maniobra', 2),
  ('pasajeros', 'Pasajeros', 3),
  ('mantenimiento', 'Mantenimiento', 4),
  ('incidente', 'Incidente', 5),
  ('zarpe', 'Zarpe', 6),
  ('observacion', 'Observacion', 7)
on conflict (codigo) do update set
  nombre = excluded.nombre,
  orden = excluded.orden,
  activo = true;

insert into public.bitacora_categorias (codigo, nombre, orden) values
  ('transporte_personal', 'Transporte personal', 1),
  ('despacho_diesel', 'Despacho diesel', 2),
  ('despacho_agua_consumo', 'Despacho agua consumo', 3),
  ('despacho_lubricante', 'Despacho lubricante', 4),
  ('despacho_agua_tratada', 'Despacho agua tratada', 5),
  ('carga_diesel_refineria_talara', 'Carga diesel refineria Talara', 6),
  ('transporte_viveres', 'Transporte viveres', 7),
  ('transporte_materiales', 'Transporte materiales', 8),
  ('recorrido', 'Recorrido', 9),
  ('patrullaje', 'Patrullaje', 10),
  ('monitoreo_ambiental', 'Monitoreo ambiental', 11),
  ('visitas', 'Visitas', 12),
  ('remolcaje', 'Remolcaje', 13),
  ('buceo', 'Buceo', 14),
  ('recoleccion_residuos', 'Recoleccion residuos', 15),
  ('evacuacion_personal', 'Evacuacion de personal', 16),
  ('mantenimiento_nave', 'Mantenimiento nave', 17),
  ('mantenimiento_plataforma', 'Mantenimiento plataforma', 18),
  ('cambio_guardia', 'Cambio de guardia', 19)
on conflict (codigo) do update set
  nombre = excluded.nombre,
  orden = excluded.orden,
  activo = true;

create or replace view public.v_bitacora_eventos
with (security_invoker = true) as
select
  e.id,
  e.fecha,
  e.hora_inicio,
  e.hora_fin,
  e.unidad_id,
  coalesce(u.nombre, e.nave_texto) as nave_nombre,
  e.nave_texto,
  e.tipo_evento,
  coalesce(t.nombre, 'Sin tipo') as tipo_evento_nombre,
  e.descripcion,
  e.categoria_id,
  c.nombre as categoria_nombre,
  e.estado,
  creador.nombre as registrado_por,
  clasificador.nombre as clasificado_por_nombre,
  e.clasificado_at,
  e.observacion_supervisor,
  e.created_by,
  e.created_at,
  e.updated_at
from public.bitacora_eventos e
left join public.unidades u on u.id = e.unidad_id
left join public.bitacora_tipos_evento t on t.codigo = e.tipo_evento
left join public.bitacora_categorias c on c.id = e.categoria_id
left join public.perfiles creador on creador.id = e.created_by
left join public.perfiles clasificador on clasificador.id = e.clasificado_por
where e.estado <> 'anulado';

create or replace function public.registrar_bitacora_evento(payload jsonb)
returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  v_evento_id uuid;
  v_fecha date;
  v_hora_inicio time;
  v_hora_fin time;
  v_nave_texto text;
  v_unidad_id uuid;
begin
  if auth.uid() is null then
    raise exception 'Usuario no autenticado.';
  end if;

  if public.current_user_role() not in ('administrador', 'controlador') then
    raise exception 'No tienes permiso para registrar eventos de bitacora.';
  end if;

  v_fecha := (payload ->> 'fecha')::date;
  v_hora_inicio := (payload ->> 'hora_inicio')::time;
  v_hora_fin := nullif(payload ->> 'hora_fin', '')::time;
  v_nave_texto := trim(coalesce(payload ->> 'nave', ''));
  v_unidad_id := public.resolve_unidad_id(v_nave_texto);

  if v_fecha is null or v_hora_inicio is null or v_nave_texto = '' or trim(coalesce(payload ->> 'descripcion', '')) = '' then
    raise exception 'Fecha, hora de inicio, nave y descripcion son obligatorios.';
  end if;

  if v_hora_fin is not null and v_hora_fin < v_hora_inicio then
    raise exception 'La hora de fin no puede ser menor que la hora de inicio.';
  end if;

  insert into public.bitacora_eventos (
    fecha,
    hora_inicio,
    hora_fin,
    unidad_id,
    nave_texto,
    tipo_evento,
    descripcion,
    estado,
    detalle,
    created_by,
    updated_by
  )
  values (
    v_fecha,
    v_hora_inicio,
    v_hora_fin,
    v_unidad_id,
    v_nave_texto,
    coalesce(nullif(payload ->> 'tipo_evento', ''), 'sin_tipo'),
    trim(payload ->> 'descripcion'),
    'pendiente_clasificar',
    coalesce(payload -> 'detalle', '{}'::jsonb),
    auth.uid(),
    auth.uid()
  )
  returning id into v_evento_id;

  return v_evento_id;
end;
$$;

create or replace function public.clasificar_bitacora_eventos(payload jsonb)
returns integer
language plpgsql
security definer
set search_path = public
as $$
declare
  v_categoria_id uuid;
  v_event_ids uuid[];
  v_updated int;
begin
  if auth.uid() is null then
    raise exception 'Usuario no autenticado.';
  end if;

  if public.current_user_role() not in ('administrador', 'supervisor', 'coordinador') then
    raise exception 'No tienes permiso para clasificar eventos.';
  end if;

  v_categoria_id := (payload ->> 'categoria_id')::uuid;

  select array_agg(value::uuid)
  into v_event_ids
  from jsonb_array_elements_text(coalesce(payload -> 'eventos', '[]'::jsonb));

  if v_categoria_id is null or coalesce(array_length(v_event_ids, 1), 0) = 0 then
    raise exception 'Categoria y eventos son obligatorios.';
  end if;

  update public.bitacora_eventos
  set
    categoria_id = v_categoria_id,
    estado = 'clasificado',
    clasificado_por = auth.uid(),
    clasificado_at = now(),
    observacion_supervisor = nullif(payload ->> 'observacion', ''),
    updated_by = auth.uid(),
    updated_at = now()
  where id = any(v_event_ids)
    and estado <> 'anulado';

  get diagnostics v_updated = row_count;
  return v_updated;
end;
$$;

grant usage on schema public to authenticated;
grant select on public.bitacora_tipos_evento to authenticated;
grant select on public.bitacora_categorias to authenticated;
grant select on public.v_bitacora_eventos to authenticated;
grant execute on function public.registrar_bitacora_evento(jsonb) to authenticated;
grant execute on function public.clasificar_bitacora_eventos(jsonb) to authenticated;

drop policy if exists perfiles_select_admin_supervisor on public.perfiles;
create policy perfiles_select_admin_supervisor
on public.perfiles
for select
to authenticated
using (public.current_user_role() in ('administrador', 'supervisor', 'coordinador'));

drop policy if exists bitacora_tipos_select_authenticated on public.bitacora_tipos_evento;
create policy bitacora_tipos_select_authenticated
on public.bitacora_tipos_evento
for select
to authenticated
using (true);

drop policy if exists bitacora_categorias_select_authenticated on public.bitacora_categorias;
create policy bitacora_categorias_select_authenticated
on public.bitacora_categorias
for select
to authenticated
using (true);

drop policy if exists bitacora_eventos_select_operativos on public.bitacora_eventos;
create policy bitacora_eventos_select_operativos
on public.bitacora_eventos
for select
to authenticated
using (
  public.current_user_role() in ('administrador', 'supervisor', 'coordinador')
  or created_by = auth.uid()
);

drop policy if exists bitacora_eventos_insert_controlador on public.bitacora_eventos;
create policy bitacora_eventos_insert_controlador
on public.bitacora_eventos
for insert
to authenticated
with check (
  public.current_user_role() in ('administrador', 'controlador')
  and created_by = auth.uid()
);

drop policy if exists bitacora_eventos_update_clasificadores on public.bitacora_eventos;
create policy bitacora_eventos_update_clasificadores
on public.bitacora_eventos
for update
to authenticated
using (public.current_user_role() in ('administrador', 'supervisor', 'coordinador'))
with check (public.current_user_role() in ('administrador', 'supervisor', 'coordinador'));

comment on table public.bitacora_eventos is
  'Raw operational events from Bitacora Rapida. Classification is added later by supervisor/coordinator roles.';

comment on function public.registrar_bitacora_evento(jsonb) is
  'Creates a real Bitacora Rapida event and leaves it pending for classification.';

comment on function public.clasificar_bitacora_eventos(jsonb) is
  'Assigns one category to selected bitacora events and marks them as clasificado.';
