-- Latest stock lookup for the Diesel register screen.
-- Used only to show the next initial stock in the UI; it stores no extra data.

create or replace function public.ultimo_stock_diesel(p_nave text)
returns table (
  stock_final numeric,
  fecha date,
  turno text,
  kardex_id uuid
)
language sql
stable
security definer
set search_path = public
as $$
  select
    k.stock_final,
    k.fecha,
    k.turno,
    k.id as kardex_id
  from public.diesel_kardex k
  where k.unidad_id = public.resolve_unidad_id(p_nave)
    and k.estado = 'vigente'
  order by k.fecha desc, public.diesel_turno_orden(k.turno) desc, k.updated_at desc
  limit 1;
$$;

grant execute on function public.ultimo_stock_diesel(text) to authenticated;

comment on function public.ultimo_stock_diesel(text) is
  'Returns the latest saved stock_final for a vessel so the next Diesel register starts from real history.';
