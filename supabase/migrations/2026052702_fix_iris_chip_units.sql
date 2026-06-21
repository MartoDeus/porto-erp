update public.unidades
set
  codigo = 'CHIP_II',
  nombre = 'CHIP II',
  updated_at = now()
where public.normalize_erp_text(codigo) = public.normalize_erp_text('CHIPP II')
   or public.normalize_erp_text(nombre) = public.normalize_erp_text('CHIPP II');

insert into public.unidades (codigo, nombre, tipo, orden)
select 'IRIS', 'IRIS', 'nave', 9
where not exists (
  select 1
  from public.unidades
  where public.normalize_erp_text(nombre) = public.normalize_erp_text('IRIS')
     or public.normalize_erp_text(codigo) = public.normalize_erp_text('IRIS')
);

insert into public.unidades (codigo, nombre, tipo, orden)
select 'CHIP_II', 'CHIP II', 'nave', 12
where not exists (
  select 1
  from public.unidades
  where public.normalize_erp_text(nombre) = public.normalize_erp_text('CHIP II')
     or public.normalize_erp_text(codigo) = public.normalize_erp_text('CHIP II')
);
