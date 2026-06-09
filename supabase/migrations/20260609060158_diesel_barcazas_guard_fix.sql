do $$
declare
  function_sql text;
begin
  function_sql := pg_get_functiondef('public.registrar_diesel(jsonb)'::regprocedure);
  function_sql := replace(
    function_sql,
    $old$
  if v_mod_despacho
    and jsonb_array_length(coalesce(payload -> 'movimientos', '[]'::jsonb)) > 0
    and not public.is_diesel_mother_ship(v_unidad_id) then
    raise exception 'Solo TALARA, PARIÑAS y LOBITOS EXPRESS CARGA pueden despachar diesel.';
  end if;
$old$,
    $new$
  if v_mod_despacho
    and jsonb_array_length(coalesce(payload -> 'movimientos', '[]'::jsonb)) > 0
    and not public.is_diesel_dispatcher_ship(v_unidad_id) then
    raise exception 'Solo naves abastecedoras y barcazas pueden despachar diesel.';
  end if;
$new$
  );
  execute function_sql;
end $$;

comment on function public.registrar_diesel(jsonb) is
  'Diesel save allows dispatch from mother ships and barcazas; transfer remains only between mother ships.';
