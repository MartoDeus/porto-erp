create or replace function public.diesel_sondaje_json_array(p_value jsonb)
returns jsonb
language sql
immutable
as $$
  select case
    when jsonb_typeof(p_value) = 'array' then p_value
    else '[]'::jsonb
  end;
$$;

create or replace function public.diesel_json_number(p_entry jsonb, p_key text)
returns numeric
language plpgsql
immutable
as $$
declare
  v_text text;
begin
  v_text := nullif(trim(coalesce(p_entry ->> p_key, '')), '');

  if v_text is null then
    return 0;
  end if;

  v_text := replace(v_text, ',', '');

  if v_text ~ '^-?[0-9]+(\.[0-9]+)?$' then
    return v_text::numeric;
  end if;

  return 0;
end;
$$;

create or replace function public.diesel_json_bool(p_entry jsonb, p_key text)
returns boolean
language sql
immutable
as $$
  select lower(coalesce(p_entry ->> p_key, '')) in ('true', 't', '1', 'yes', 'si');
$$;

create or replace function public.diesel_sondaje_entry_has_data(p_entry jsonb)
returns boolean
language sql
immutable
as $$
  select
    length(trim(coalesce(p_entry ->> 'document', ''))) > 0
    or public.diesel_json_bool(p_entry, 'hasReturnInput')
    or public.diesel_json_bool(p_entry, 'hasDifferenceInput')
    or public.diesel_json_bool(p_entry, 'hasConsumptionInput')
    or abs(public.diesel_json_number(p_entry, 'returnVolume')) > 0
    or abs(public.diesel_json_number(p_entry, 'difference')) > 0
    or abs(public.diesel_json_number(p_entry, 'consumption')) > 0;
$$;

create or replace function public.diesel_merge_sondajes(p_existing jsonb, p_incoming jsonb)
returns jsonb
language sql
immutable
as $$
  with raw_entries as (
    select value as entry, ordinality::int as position, 1 as source_order
    from jsonb_array_elements(public.diesel_sondaje_json_array(p_existing)) with ordinality
    union all
    select value as entry, ordinality::int as position, 2 as source_order
    from jsonb_array_elements(public.diesel_sondaje_json_array(p_incoming)) with ordinality
  ),
  clean_entries as (
    select
      least(
        5,
        greatest(
          1,
          coalesce(nullif(floor(public.diesel_json_number(entry, 'index'))::int, 0), position)
        )
      ) as slot,
      entry,
      source_order,
      position
    from raw_entries
    where public.diesel_sondaje_entry_has_data(entry)
  ),
  ranked_entries as (
    select
      slot,
      entry,
      row_number() over (
        partition by slot
        order by source_order desc, position desc
      ) as rn
    from clean_entries
  ),
  slots as (
    select generate_series(1, 5) as slot
  )
  select jsonb_agg(
    coalesce(
      ranked_entries.entry,
      jsonb_build_object(
        'index', slots.slot,
        'document', '',
        'returnVolume', 0,
        'difference', 0,
        'consumption', 0,
        'hasReturnInput', false,
        'hasDifferenceInput', false,
        'hasConsumptionInput', false
      )
    )
    order by slots.slot
  )
  from slots
  left join ranked_entries
    on ranked_entries.slot = slots.slot
   and ranked_entries.rn = 1;
$$;

create or replace function public.diesel_kardex_merge_sondajes_before_save()
returns trigger
language plpgsql
as $$
declare
  v_existing jsonb := '[]'::jsonb;
  v_old jsonb := '[]'::jsonb;
  v_base jsonb := '[]'::jsonb;
  v_merged jsonb := '[]'::jsonb;
begin
  if new.cabecera is null or not (new.cabecera ? 'sondajes') then
    return new;
  end if;

  select coalesce(jsonb_agg(entry), '[]'::jsonb)
  into v_existing
  from (
    select value as entry
    from public.diesel_kardex k
    cross join lateral jsonb_array_elements(
      public.diesel_sondaje_json_array(k.cabecera -> 'sondajes')
    ) as value
    where k.fecha = new.fecha
      and k.unidad_id = new.unidad_id
      and k.estado = 'vigente'
      and (tg_op = 'INSERT' or k.id <> new.id)
  ) existing_entries
  where public.diesel_sondaje_entry_has_data(entry);

  if tg_op = 'UPDATE' and old.cabecera is not null and old.cabecera ? 'sondajes' then
    v_old := old.cabecera -> 'sondajes';
  end if;

  v_base := public.diesel_merge_sondajes(v_existing, v_old);
  v_merged := public.diesel_merge_sondajes(v_base, new.cabecera -> 'sondajes');
  new.cabecera := jsonb_set(coalesce(new.cabecera, '{}'::jsonb), '{sondajes}', v_merged, true);

  return new;
end;
$$;

drop trigger if exists diesel_kardex_merge_sondajes_before_save on public.diesel_kardex;

create trigger diesel_kardex_merge_sondajes_before_save
before insert or update on public.diesel_kardex
for each row
execute function public.diesel_kardex_merge_sondajes_before_save();

comment on function public.diesel_merge_sondajes(jsonb, jsonb) is
  'Merges diesel sounding slots 1-5 preserving existing entries for the same vessel/date and applying the incoming slot only when it has data.';
