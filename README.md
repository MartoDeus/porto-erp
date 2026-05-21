# ALM ERP

ERP web para administrar recursos operativos de muelle maritimo.

## Estado actual

Primer modulo implementado:

- Pantalla de inicio de sesion.
- Fondo portuario personalizado.
- Validacion de usuario desde `data/users.json`.
- Sesion local con `sessionStorage`.
- Opcion "Recordarme" con `localStorage`.
- Panel inicial posterior al login.

## Probar localmente

Desde esta carpeta:

```bash
python -m http.server 4173 --bind 127.0.0.1
```

Luego abrir:

```txt
http://127.0.0.1:4173/
```

## Usuarios demo

```txt
Usuario: admin
Contraseña: admin
```

```txt
Usuario: operaciones
Contraseña: muelle2026
```

## Proximos modulos

- Dashboard principal.
- Diesel.
- Agua Tratada.
- Agua de Consumo.
- Lubricante.
- Pasajeros.
- Horometros.
- Cargas.
- Mapa animado de recorrido de nave.
- Integracion con Google Sheets.

## Nota de seguridad

El login actual es una base de prototipo para pagina estatica. Para produccion, la autenticacion debe pasar a un backend o servicio seguro antes de manejar datos reales.
