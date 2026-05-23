-- Passenger export/report views.
-- Views do not duplicate storage, but authenticated users need SELECT grants.

grant select on table public.v_pasajeros_detalle to authenticated;
grant select on table public.v_pasajeros_resumen_diario to authenticated;
