-- Registro y consulta real del modulo Agua Tratada.

create table if not exists public."AguaTratada" (
  id uuid primary key default gen_random_uuid(),
  fecha date not null,
  mes text not null,
  "año" integer not null,
  nave text not null,
  detalle text not null,
  tipo_nave text not null,
  tipo_movimiento text not null,
  zona text not null,
  cantidad numeric(14, 3) not null,
  guia_remision text not null,
  hora_inicio time not null,
  hora_fin time not null,
  tiempo_recarga text,
  observaciones text,
  created_by uuid references public.perfiles(id) default auth.uid(),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint agua_tratada_cantidad_positiva check (cantidad > 0),
  constraint agua_tratada_vale_numerico check (guia_remision ~ '^[0-9]+$'),
  constraint agua_tratada_movimiento_valido check (tipo_movimiento in ('RECARGA', 'TRANSFERENCIA', 'DESPACHO')),
  constraint agua_tratada_sin_reingreso check (detalle <> 'REINGRESO' and tipo_movimiento <> 'REINGRESO')
);

create index if not exists agua_tratada_fecha_idx
  on public."AguaTratada"(fecha);

create index if not exists agua_tratada_nave_fecha_idx
  on public."AguaTratada"(nave, fecha);

create index if not exists agua_tratada_detalle_idx
  on public."AguaTratada"(detalle);

create index if not exists agua_tratada_tipo_movimiento_idx
  on public."AguaTratada"(tipo_movimiento);

alter table public."AguaTratada" enable row level security;

grant usage on schema public to authenticated;
grant select, insert on table public."AguaTratada" to authenticated;

drop policy if exists agua_tratada_select_operativos on public."AguaTratada";
create policy agua_tratada_select_operativos
on public."AguaTratada"
for select
to authenticated
using (
  public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador', 'analista')
);

drop policy if exists agua_tratada_insert_operativos on public."AguaTratada";
create policy agua_tratada_insert_operativos
on public."AguaTratada"
for insert
to authenticated
with check (
  coalesce(created_by, auth.uid()) = auth.uid()
  and public.current_user_role() in ('administrador', 'supervisor', 'coordinador', 'controlador')
);

comment on table public."AguaTratada" is
  'Registros reales del modulo Agua Tratada. La consulta y exportacion consumen esta tabla.';
