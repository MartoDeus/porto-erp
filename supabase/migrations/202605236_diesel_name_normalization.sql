-- Keep diesel unit matching tolerant of accents, Ñ, spaces and parentheses.

create or replace function public.normalize_erp_text(value text)
returns text
language sql
immutable
as $$
  select upper(
    trim(both '_' from translate(
      regexp_replace(coalesce(value, ''), '[^[:alnum:]]+', '_', 'g'),
      'ÁÉÍÓÚÜÑáéíóúüñ',
      'AEIOUUNAEIOUUN'
    ))
  );
$$;
