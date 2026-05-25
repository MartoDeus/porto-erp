-- LOBITOS EXPRESS CARGA also receives external recharge from Amarradero No. 4.

do $$
declare
  function_sql text;
begin
  function_sql := pg_get_functiondef('public.registrar_diesel(jsonb)'::regprocedure);
  function_sql := replace(
    function_sql,
    'in (''TALARA'', ''PARINAS'')',
    'in (''TALARA'', ''PARINAS'', ''LOBITOS_EXPRESS_CARGA'')'
  );
  execute function_sql;
end;
$$;
