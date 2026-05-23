-- Accept UI-friendly diesel movement labels while keeping the allowed set controlled.

alter table public.diesel_movimientos
  drop constraint if exists diesel_movimientos_tipo_check;

alter table public.diesel_movimientos
  add constraint diesel_movimientos_tipo_check
  check (
    lower(tipo) = any (
      array[
        'recarga',
        'despacho',
        'transferencia',
        'consumo',
        'sondaje',
        'correccion',
        'reingreso sondaje',
        'diferencia sondaje'
      ]
    )
  );
