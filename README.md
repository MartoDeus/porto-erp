# ALM ERP

ERP web para administrar recursos operativos de un muelle maritimo.

Este proyecto se esta construyendo como una pagina web estatica con:

- HTML
- CSS
- JavaScript
- JSON
- GitHub Pages
- Futuro almacenamiento con Google Sheets

## Enlace publicado

GitHub Pages:

```txt
https://martodeus.github.io/porto-erp/
```

## Como correrlo localmente

Desde la carpeta del proyecto:

```bash
python -m http.server 4173 --bind 127.0.0.1
```

Abrir en Chrome:

```txt
http://127.0.0.1:4173/
```

## Usuarios demo

```txt
Usuario: admin
Contrasena: admin
Rol: Administrador
```

```txt
Usuario: operaciones
Contrasena: muelle2026
Rol: Operador
```

El login actual es solo para prototipo estatico. Antes de usar datos reales, la autenticacion debe pasar a un backend o servicio seguro.

## Avance actual

### Login

- Pantalla de inicio de sesion con fondo portuario.
- Logo ALM.
- Validacion de usuario desde `data/users.json`.
- Sesion con `sessionStorage`.
- Opcion "Recordarme" con `localStorage`.
- Credenciales temporales `admin/admin`.

### Layout ERP

- Sidebar oscuro fijo.
- Sidebar con scroll propio.
- Area principal con scroll independiente.
- Topbar con titulo dinamico por pantalla.
- Iconos con Lucide local en `assets/lucide.min.js`.
- Menu de perfil desplegable.
- Panel de notificaciones visual.
- Cierre de sesion desde el menu de perfil.

### Dashboard

- Summary/resource cards principales:
  - Diesel
  - Lubricante
  - Agua Tratada
  - Agua de Consumo
- Grafico visual de consumo de recursos prioritarios.
- Panel de operaciones activas.
- Cards inferiores de apoyo.

### Pasajeros

- Pantalla `Registro de Pasajeros` accesible desde el sidebar.
- Formulario con:
  - Fecha
  - Movimiento
  - Tipo de pasajero
  - Embarcacion
  - Turno
- Galeria dinamica de contratistas/rutinas/cantidad.
- Boton agregar.
- Boton eliminar por fila.
- Resumen dinamico que suma pasajeros.
- Tarjetas inferiores de estadisticas.
- Listas cargadas en HTML:
  - Contratistas
  - Embarcaciones
  - Rutinas

### Diesel

Pantalla `Registro de Diesel` accesible desde:

```txt
Sidebar Nav > Operaciones > Diesel
```

Incluye:

- Encabezado con fecha, nave origen, turno y usuario registrador.
- Modulo Recarga con toggle Activo/Bloqueado.
- Modulo Acta Sondaje con toggle Activo/Bloqueado.
- Modulo Tripulacion con toggle Activo/Bloqueado.
- Modulo Consumo con toggle Activo/Bloqueado.
- Modulo Despacho con toggle Activo/Bloqueado.
- Modulo Observaciones siempre activo, sin toggle.
- Resumen lateral de diesel.
- Tarjetas inferiores:
  - Stock total actual
  - Total recargado hoy
  - Total despachado hoy
  - Transferencias hoy
  - Consumo hoy

Logica ya implementada en Diesel:

- Los toggles cambian el estado entre `Activo` y `Bloqueado`.
- Si se bloquea un modulo, sus campos quedan deshabilitados visualmente.
- `Nave Recibe` excluye automaticamente la nave seleccionada en `Nave Origen`.
- Si `Nave Origen` es `TALARA` y `Nave Recibe` es `PARINAS` o `LOBITOS EXPRESS CARGA`, la fila se marca como `Trans.`.
- En los demas casos la fila se marca como `Desp.`.
- La galeria de despacho tiene altura fija y scroll propio.
- Se quito el total despachado debajo de la galeria; se conserva en el resumen.
- En Acta Sondaje:
  - Si se escribe en `Reingreso`, se desactiva `Diferencia`.
  - Si se escribe en `Diferencia`, se desactiva `Reingreso`.
  - En el resumen la etiqueta es `Sondaje`.
  - Reingreso se muestra positivo en verde.
  - Diferencia se muestra negativo en rojo con signo `-`.
- Los radiobuttons del encabezado Diesel son 70% mas grandes.

Naves usadas hasta ahora:

- TALARA
- PARINAS
- SHEYLA
- BUCKLEY EXPRESS
- LOBITOS EXPRESS CARGA
- OLYMPIC
- CABO BLANCO
- NEPTUNE
- LJ KELLEY

## Estructura de archivos

```txt
index.html
style.css
script.js
README.md
data/users.json
assets/alm_logo.png
assets/fondo.jpeg
assets/lucide.min.js
```

## Flujo de trabajo acordado

- Primero se prueban cambios localmente en:

```txt
http://127.0.0.1:4173/
```

- No subir a GitHub hasta que se pida explicitamente.
- Cuando se pida subir, hacer commit y push a `main`.
- GitHub Pages publica desde:

```txt
main / root
```

## Pendientes proximos

### General

- Definir permisos por rol:
  - Administrador
  - Analista
  - Controlador
  - Supervisor
  - Visitante
- Conectar datos a Google Sheets.
- Definir modelo de datos JSON/Sheets por modulo.
- Agregar persistencia real de registros.
- Agregar validaciones completas de formularios.
- Agregar exportacion real.
- Agregar historial de registros.
- Agregar busqueda y filtros.

### Diesel

- Ajustar medidas finales de los modulos.
- Definir formula exacta de stock inicial/final.
- Definir origen real del stock por nave.
- Definir reglas completas para transferencia vs despacho.
- Agregar guardado real del registro.
- Agregar edicion de filas.
- Agregar confirmacion antes de eliminar.
- Agregar historial de diesel.
- Agregar reportes de diesel.

### Pasajeros

- Conectar listas de contratistas/rutinas/embarcaciones a Google Sheets.
- Guardar registros.
- Agregar exportacion.
- Agregar historial.
- Agregar validaciones de cantidad.
- Definir comportamiento para Entrante/Saliente.

### Modulos por construir

- Lubricante.
- Agua Tratada.
- Agua de Consumo.
- Buceo.
- Horometros.
- Cargas.
- Mapa con animacion de recorrido de nave de punto A a punto B.
- Naves.
- Rutas.
- Reportes.
- Historial general.
- Usuarios.
- Ajustes.

## Notas importantes

- El proyecto actualmente es una app estatica; no debe manejar informacion sensible real hasta tener backend/autenticacion segura.
- Los archivos no relacionados que puedan aparecer como untracked no se deben subir sin revisar.
- Mantener el estilo visual industrial/maritimo con sidebar oscuro, acentos verde petroleo y tarjetas blancas.
