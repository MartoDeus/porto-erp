update public.unidades
set
  codigo = 'SHEILA_R',
  nombre = 'SHEILA R',
  updated_at = now()
where codigo = 'SHEYLA'
   or nombre = 'SHEYLA';

insert into public.unidades (codigo, nombre, tipo, orden)
select 'SHEILA_R', 'SHEILA R', 'nave', 3
where not exists (
  select 1
  from public.unidades
  where public.normalize_erp_text(nombre) = public.normalize_erp_text('SHEILA R')
     or public.normalize_erp_text(codigo) = public.normalize_erp_text('SHEILA R')
);
