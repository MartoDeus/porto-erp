create extension if not exists pgcrypto;

create or replace function public.set_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

create table public.roles (
  id smallserial primary key,
  codigo text not null unique,
  nombre text not null,
  descripcion text,
  created_at timestamptz not null default now()
);

create table public.perfiles (
  id uuid primary key references auth.users(id) on delete cascade,
  username text unique,
  nombre text,
  rol_id smallint references public.roles(id),
  estado text not null default 'activo' check (estado in ('activo', 'bloqueado', 'anulado')),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table public.unidades (
  id uuid primary key default gen_random_uuid(),
  codigo text not null unique,
  nombre text not null,
  tipo text not null default 'nave',
  activo boolean not null default true,
  orden int not null default 0,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table public.turnos (
  codigo text primary key,
  nombre text not null,
  orden int not null
);

create table public.diesel_kardex (
  id uuid primary key default gen_random_uuid(),
  fecha date not null,
  unidad_id uuid not null references public.unidades(id),
  turno text not null references public.turnos(codigo),
  usuario_registrador_id uuid references public.perfiles(id),
  nave_origen_id uuid references public.unidades(id),
  stock_inicial numeric(14,3) not null default 0,
  stock_final numeric(14,3) not null default 0,
  total_recarga numeric(14,3) not null default 0,
  total_despacho numeric(14,3) not null default 0,
  total_transferencia numeric(14,3) not null default 0,
  total_consumo numeric(14,3) not null default 0,
  sondaje_reingreso numeric(14,3) not null default 0,
  sondaje_diferencia numeric(14,3) not null default 0,
  modulos_estado jsonb not null default '{}'::jsonb,
  cabecera jsonb not null default '{}'::jsonb,
  observaciones text,
  tiene_movimiento boolean not null default false,
  estado text not null default 'vigente' check (estado in ('vigente', 'anulado')),
  created_by uuid references public.perfiles(id),
  updated_by uuid references public.perfiles(id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint diesel_kardex_fecha_unidad_turno_uk unique (fecha, unidad_id, turno),
  constraint diesel_sondaje_exclusivo_chk check (
    sondaje_reingreso = 0
    or sondaje_diferencia = 0
  )
);

create table public.diesel_movimientos (
  id uuid primary key default gen_random_uuid(),
  kardex_id uuid not null references public.diesel_kardex(id) on delete restrict,
  fecha date not null,
  turno text not null references public.turnos(codigo),
  tipo text not null check (tipo in ('recarga', 'despacho', 'transferencia', 'consumo', 'sondaje', 'correccion')),
  nave_origen_id uuid references public.unidades(id),
  nave_destino_id uuid references public.unidades(id),
  cantidad numeric(14,3) not null default 0 check (cantidad >= 0),
  detalle jsonb not null default '{}'::jsonb,
  estado text not null default 'vigente' check (estado in ('vigente', 'anulado')),
  created_by uuid references public.perfiles(id),
  created_at timestamptz not null default now()
);

create table public.horometros (
  id uuid primary key default gen_random_uuid(),
  fecha date not null,
  unidad_id uuid not null references public.unidades(id),
  turno text not null references public.turnos(codigo),
  horometro_inicial numeric(14,2),
  horometro_final numeric(14,2),
  horas_trabajadas numeric(14,2),
  observaciones text,
  estado text not null default 'vigente' check (estado in ('vigente', 'anulado')),
  created_by uuid references public.perfiles(id),
  updated_by uuid references public.perfiles(id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint horometros_fecha_unidad_turno_uk unique (fecha, unidad_id, turno)
);

create table public.pasajeros_registros (
  id uuid primary key default gen_random_uuid(),
  fecha date not null,
  movimiento text not null check (movimiento in ('entrante', 'saliente')),
  tipo_pasajero text not null,
  embarcacion_id uuid references public.unidades(id),
  turno text references public.turnos(codigo),
  contratista text,
  rutina text,
  cantidad int not null check (cantidad >= 0),
  detalle jsonb not null default '{}'::jsonb,
  estado text not null default 'vigente' check (estado in ('vigente', 'anulado')),
  created_by uuid references public.perfiles(id),
  updated_by uuid references public.perfiles(id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table public.recurso_movimientos (
  id uuid primary key default gen_random_uuid(),
  recurso text not null check (recurso in ('lubricante', 'agua_tratada', 'agua_consumo')),
  fecha date not null,
  unidad_id uuid references public.unidades(id),
  turno text references public.turnos(codigo),
  tipo text not null check (tipo in ('ingreso', 'salida', 'consumo', 'transferencia', 'ajuste')),
  cantidad numeric(14,3) not null check (cantidad >= 0),
  unidad_medida text not null default 'gal',
  detalle jsonb not null default '{}'::jsonb,
  observaciones text,
  estado text not null default 'vigente' check (estado in ('vigente', 'anulado')),
  created_by uuid references public.perfiles(id),
  updated_by uuid references public.perfiles(id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table public.cargas (
  id uuid primary key default gen_random_uuid(),
  fecha date not null,
  unidad_id uuid references public.unidades(id),
  tipo_carga text not null,
  descripcion text,
  cantidad numeric(14,3) not null default 0 check (cantidad >= 0),
  unidad_medida text,
  origen text,
  destino text,
  detalle jsonb not null default '{}'::jsonb,
  estado text not null default 'vigente' check (estado in ('vigente', 'anulado')),
  created_by uuid references public.perfiles(id),
  updated_by uuid references public.perfiles(id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table public.rutas (
  id uuid primary key default gen_random_uuid(),
  codigo text not null unique,
  nombre text not null,
  origen text,
  destino text,
  activo boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table public.ruta_puntos (
  id uuid primary key default gen_random_uuid(),
  ruta_id uuid not null references public.rutas(id) on delete cascade,
  orden int not null,
  nombre text,
  latitud numeric(10,7),
  longitud numeric(10,7),
  metadata jsonb not null default '{}'::jsonb,
  constraint ruta_puntos_ruta_orden_uk unique (ruta_id, orden)
);

create table public.auditoria (
  id bigserial primary key,
  tabla text not null,
  registro_id uuid,
  accion text not null check (accion in ('insert', 'update', 'anular', 'delete', 'login', 'backup', 'restore')),
  usuario_id uuid references public.perfiles(id),
  datos_anteriores jsonb,
  datos_nuevos jsonb,
  comentario text,
  created_at timestamptz not null default now()
);

create table public.backups_log (
  id bigserial primary key,
  tipo text not null check (tipo in ('sql', 'csv', 'json', 'manual', 'restore_test')),
  ubicacion text,
  tablas text[],
  estado text not null default 'pendiente' check (estado in ('pendiente', 'correcto', 'fallido')),
  tamano_bytes bigint,
  hash_archivo text,
  comentario text,
  created_by uuid references public.perfiles(id),
  created_at timestamptz not null default now()
);

create index diesel_kardex_fecha_idx on public.diesel_kardex(fecha);
create index diesel_kardex_unidad_idx on public.diesel_kardex(unidad_id);
create index diesel_movimientos_fecha_idx on public.diesel_movimientos(fecha);
create index diesel_movimientos_kardex_idx on public.diesel_movimientos(kardex_id);
create index horometros_fecha_idx on public.horometros(fecha);
create index pasajeros_fecha_idx on public.pasajeros_registros(fecha);
create index recurso_movimientos_recurso_fecha_idx on public.recurso_movimientos(recurso, fecha);
create index cargas_fecha_idx on public.cargas(fecha);
create index auditoria_tabla_registro_idx on public.auditoria(tabla, registro_id);
create index auditoria_created_at_idx on public.auditoria(created_at);

create trigger perfiles_set_updated_at
before update on public.perfiles
for each row execute function public.set_updated_at();

create trigger unidades_set_updated_at
before update on public.unidades
for each row execute function public.set_updated_at();

create trigger diesel_kardex_set_updated_at
before update on public.diesel_kardex
for each row execute function public.set_updated_at();

create trigger horometros_set_updated_at
before update on public.horometros
for each row execute function public.set_updated_at();

create trigger pasajeros_registros_set_updated_at
before update on public.pasajeros_registros
for each row execute function public.set_updated_at();

create trigger recurso_movimientos_set_updated_at
before update on public.recurso_movimientos
for each row execute function public.set_updated_at();

create trigger cargas_set_updated_at
before update on public.cargas
for each row execute function public.set_updated_at();

create trigger rutas_set_updated_at
before update on public.rutas
for each row execute function public.set_updated_at();

alter table public.roles enable row level security;
alter table public.perfiles enable row level security;
alter table public.unidades enable row level security;
alter table public.turnos enable row level security;
alter table public.diesel_kardex enable row level security;
alter table public.diesel_movimientos enable row level security;
alter table public.horometros enable row level security;
alter table public.pasajeros_registros enable row level security;
alter table public.recurso_movimientos enable row level security;
alter table public.cargas enable row level security;
alter table public.rutas enable row level security;
alter table public.ruta_puntos enable row level security;
alter table public.auditoria enable row level security;
alter table public.backups_log enable row level security;

insert into public.roles (codigo, nombre, descripcion) values
  ('administrador', 'Administrador', 'Acceso completo al sistema'),
  ('analista', 'Analista', 'Consulta, reportes y analisis de registros'),
  ('controlador', 'Controlador', 'Registro y control operativo'),
  ('supervisor', 'Supervisor', 'Revision y aprobacion operativa'),
  ('visitante', 'Visitante', 'Consulta limitada')
on conflict (codigo) do nothing;

insert into public.turnos (codigo, nombre, orden) values
  ('diurno', 'Diurno', 1),
  ('nocturno', 'Nocturno', 2)
on conflict (codigo) do nothing;

insert into public.unidades (codigo, nombre, tipo, orden) values
  ('TALARA', 'TALARA', 'nave', 1),
  ('PARINAS', 'PARINAS', 'nave', 2),
  ('SHEYLA', 'SHEYLA', 'nave', 3),
  ('BUCKLEY_EXPRESS', 'BUCKLEY EXPRESS', 'nave', 4),
  ('LOBITOS_EXPRESS_CARGA', 'LOBITOS EXPRESS CARGA', 'nave', 5),
  ('LOBITOS_EXPRESS_CONSUMO', 'LOBITOS EXPRESS CONSUMO', 'nave', 6),
  ('OLYMPIC', 'OLYMPIC', 'nave', 7),
  ('CABO_BLANCO', 'CABO BLANCO', 'nave', 8),
  ('NEPTUNE', 'NEPTUNE', 'nave', 9),
  ('LJ_KELLEY', 'LJ KELLEY', 'nave', 10),
  ('PENA_NEGRA', 'PENA NEGRA', 'nave', 11),
  ('PROVIDENCIA', 'PROVIDENCIA', 'nave', 12),
  ('PLAYA_TORTUGA', 'PLAYA TORTUGA', 'nave', 13),
  ('BAHIA', 'BAHIA', 'nave', 14),
  ('LITORAL', 'LITORAL', 'nave', 15),
  ('ALBACORA', 'ALBACORA', 'nave', 16),
  ('SAN_PEDRO', 'SAN PEDRO', 'nave', 17),
  ('PACIFICO', 'PACIFICO', 'nave', 18),
  ('MANCORA', 'MANCORA', 'nave', 19)
on conflict (codigo) do update set
  nombre = excluded.nombre,
  tipo = excluded.tipo,
  orden = excluded.orden;
