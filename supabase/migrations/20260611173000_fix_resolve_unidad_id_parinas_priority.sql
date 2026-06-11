create or replace function public.resolve_unidad_id(value text)
returns uuid
language sql
stable
security definer
set search_path = public
as $$
  with input_value as (
    select
      trim(value) as value_raw,
      upper(trim(value)) as value_upper_raw,
      public.normalize_erp_text(value) as value_norm,
      regexp_replace(public.normalize_erp_text(value), '(_EXPRESS)$', '') as value_base
  )
  select u.id
  from public.unidades u
  cross join input_value i
  where public.normalize_erp_text(u.nombre) = i.value_norm
     or public.normalize_erp_text(u.codigo) = i.value_norm
     or regexp_replace(public.normalize_erp_text(u.nombre), '(_EXPRESS)$', '') = i.value_base
     or regexp_replace(public.normalize_erp_text(u.codigo), '(_EXPRESS)$', '') = i.value_base
  order by
    case
      when upper(trim(u.nombre)) = i.value_upper_raw
        or upper(trim(u.codigo)) = i.value_upper_raw then 0
      when public.normalize_erp_text(u.nombre) = i.value_norm
        or public.normalize_erp_text(u.codigo) = i.value_norm then 1
      else 2
    end,
    case
      when position('Ñ' in i.value_upper_raw) > 0 and (u.nombre like '%Ñ%' or u.codigo like '%Ñ%') then 0
      when position('Ñ' in i.value_upper_raw) > 0 then 1
      else 0
    end,
    u.orden,
    u.created_at desc,
    u.nombre
  limit 1;
$$;

grant execute on function public.resolve_unidad_id(text) to authenticated;
