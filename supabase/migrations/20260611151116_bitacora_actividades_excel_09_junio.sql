alter table if exists public.bitacora_eventos
  drop constraint if exists bitacora_horas_chk;

drop view if exists public.v_bitacora_eventos;

create view public.v_bitacora_eventos
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
  e.detalle,
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
    raise exception 'No tienes permiso para registrar actividades de bitacora.';
  end if;

  v_fecha := (payload ->> 'fecha')::date;
  v_hora_inicio := (payload ->> 'hora_inicio')::time;
  v_hora_fin := nullif(payload ->> 'hora_fin', '')::time;
  v_nave_texto := trim(coalesce(payload ->> 'nave', ''));
  v_unidad_id := public.resolve_unidad_id(v_nave_texto);

  if v_fecha is null or v_hora_inicio is null or v_nave_texto = '' or trim(coalesce(payload ->> 'descripcion', '')) = '' then
    raise exception 'Fecha, hora de inicio, nave y descripcion son obligatorios.';
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

grant select on public.v_bitacora_eventos to authenticated;
