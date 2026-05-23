# ALM ERP

ERP web para administrar recursos operativos de un muelle maritimo.

Este proyecto se esta construyendo como una pagina web estatica con:

- HTML
- CSS
- JavaScript
- JSON
- GitHub Pages
- Futuro almacenamiento principal con Supabase/PostgreSQL
- Exportaciones auxiliares a CSV/Excel/Google Sheets si se necesitan

## Decision tecnica actual

El usuario quiere que Codex se encargue principalmente de:

- Logica del sistema.
- Base de datos.
- Guardado de informacion.
- Consulta de registros.
- Validaciones.
- Auditoria.
- Backups.
- Seguridad de datos.

La interfaz visual se toca solo cuando sea necesario para conectar o probar la logica.

La opcion elegida para crecer es:

```txt
Supabase + PostgreSQL
```

Proyecto Supabase creado:

```txt
Organizacion: ALM RecursoS
Proyecto: alm-erp
URL: https://hkkgyjkwkezsomjmwnen.supabase.co
```

Motivos:

- Tiene base de datos relacional real.
- Permite crecer mas ordenadamente que Google Sheets.
- Incluye API automatica para conectar la web.
- Permite autenticacion y permisos por usuario.
- Permite politicas de seguridad por fila con RLS.
- Facilita consultas, reportes, historial y auditoria.
- Se puede respaldar con dumps SQL y exportaciones por tabla.

Google Sheets queda solo como posible exportacion o respaldo auxiliar, no como base principal.

## Reglas de seguridad de datos

La informacion del proyecto puede ser delicada. Por eso se acuerda:

- No guardar claves sensibles en el codigo.
- Usar archivo local `.env` para credenciales.
- No subir `.env` a GitHub.
- Nunca usar `service_role key` en el frontend.
- Separar permisos de lectura, escritura y administracion.
- Hacer backup antes de cambios grandes de estructura.
- No borrar registros reales de kardex.
- Para eliminar, usar estado `anulado`.
- Toda modificacion importante debe quedar en tabla de auditoria.
- El kardex debe ser append-only en lo critico: se agregan movimientos y correcciones, no se reescribe la historia sin rastro.
- Debe existir backup local periodico descargable a la computadora del usuario.
- Debe existir segundo backup externo en Drive, OneDrive, disco externo u otra ubicacion.

## Estrategia de base de datos propuesta

Tablas principales previstas:

- `usuarios`
- `roles`
- `unidades`
- `diesel_kardex`
- `diesel_movimientos`
- `diesel_auditoria`
- `backups_log`

Migracion inicial creada localmente:

```txt
supabase/migrations/202605221_initial_schema.sql
```

Migracion de consultas/exportaciones Diesel:

```txt
supabase/migrations/202605231_diesel_reporting_exports.sql
```

Incluye estructura inicial para:

- `roles`
- `perfiles`
- `unidades`
- `turnos`
- `diesel_kardex`
- `diesel_movimientos`
- `horometros`
- `pasajeros_registros`
- `recurso_movimientos`
- `cargas`
- `rutas`
- `ruta_puntos`
- `auditoria`
- `backups_log`

Estado Supabase:

- Migracion inicial ejecutada en el SQL Editor del proyecto `alm-erp`.
- Migracion `diesel_reporting_exports` aplicada desde Codex en Supabase.
- RLS activado en tablas principales.
- Catalogo inicial cargado con 5 roles, 2 turnos y 19 unidades/naves.
- Las politicas RLS especificas quedan pendientes antes de conectar el frontend.

Regla base de Diesel:

```txt
1 fecha x 19 unidades x 2 turnos = 38 registros diarios
```

Clave logica del kardex:

```txt
fecha + unidad + turno
```

Cada registro debe guardarse aunque no tenga movimiento.

## Exportaciones Diesel previstas

La web debe permitir que el usuario descargue dos archivos cuando lo decida:

1. Kardex detallado con toda la informacion guardada.
2. PDF con resumen consolidado de un dia concreto.

Para esto se agrego una capa SQL de consulta:

- `v_diesel_kardex_detalle`
- `v_diesel_resumen_diario`
- `v_diesel_resumen_diario_totales`

Regla importante:

```txt
La base guarda detalle por fecha + unidad + turno.
La consulta/PDF muestra resumen consolidado por fecha + unidad.
```

La vista `v_diesel_kardex_detalle` sirve para exportar todo el detalle operativo.

La vista `v_diesel_resumen_diario` sirve para el PDF diario:

- Una fila por unidad por dia.
- Consolida Diurno y Nocturno.
- No suma stock inicial dos veces.
- Calcula consumo dia, consumo noche y consumo total.
- Calcula stock final diario con formula.
- Muestra guardia dia y guardia noche.

La vista `v_diesel_resumen_diario_totales` sirve para los totales inferiores del PDF.

Nota de almacenamiento:

- Las vistas SQL no duplican la informacion ni guardan filas nuevas.
- Una vista es una consulta guardada en la base.
- Por eso ayudan a exportar y resumir datos sin llenar rapido el almacenamiento.
- Si en el futuro no se usan, se pueden eliminar con `drop view`.

## Que es una migracion SQL

Una migracion SQL es un archivo que describe un cambio controlado en la base de datos.

Ejemplos:

- Crear una tabla.
- Agregar una columna.
- Crear una vista.
- Crear indices.
- Agregar restricciones.

Sirve para que el cambio quede documentado, repetible y trazable. Si se trabaja desde otra computadora, basta con revisar la carpeta `supabase/migrations` para saber que estructura debe tener la base.

Regla del proyecto:

```txt
Los cambios importantes de base de datos deben quedar como migraciones SQL en el repo y aplicarse en Supabase.
```

## Backups previstos

Cuando se conecte Supabase:

- Backup SQL completo usando Supabase CLI o `pg_dump`.
- Exportacion CSV/JSON por tablas criticas.
- Carpeta local para backups en la computadora del usuario.
- Copia externa adicional.
- Registro de cada backup en `backups_log`.
- Prueba periodica de restauracion, no solo descarga.

Los backups deben permitir recuperar informacion aunque haya error humano, error de codigo o problema con la base.

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

- Catalogo de 19 unidades para kardex Diesel.
- Dos turnos diarios por unidad: Diurno y Nocturno.
- Al iniciar o cambiar fecha se asegura una base de 38 registros por dia.
- El guardado hace upsert por `fecha + nave + turno`.
- Se guarda el registro aunque no tenga movimiento, manteniendo stock inicial/final.
- La estructura guardada separa cabecera, totales, estados de modulos y detalle de despachos/transferencias, similar a una lista Power Apps.
- Consulta Diesel muestra los 38 registros diarios y marca `Mov.` o `Sin mov.`.
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
- LOBITOS EXPRESS CONSUMO
- OLYMPIC
- CABO BLANCO
- NEPTUNE
- LJ KELLEY
- PENA NEGRA
- PROVIDENCIA
- PLAYA TORTUGA
- BAHIA
- LITORAL
- ALBACORA
- SAN PEDRO
- PACIFICO
- MANCORA

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
supabase/migrations/202605221_initial_schema.sql
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

- Desde ahora, cada cambio importante debe actualizarse en GitHub para poder continuar desde otra computadora.
- Si no aparece `git` en el PATH, usar Git portable de GitHub Desktop:

```txt
C:\Users\User\AppData\Local\GitHubDesktop\app-3.5.8\resources\app\git\cmd\git.exe
```

Ultimo commit conocido con la migracion inicial Supabase:

```txt
cf41552 Add initial Supabase schema
```

## Contexto para retomar en otra computadora

Prioridad del proyecto en la siguiente etapa:

1. Definir y aplicar politicas RLS especificas por rol antes de conectar datos reales.
2. Conectar la web estatica a Supabase usando solo la anon public key en frontend.
3. Migrar el guardado Diesel desde `localStorage` hacia Supabase.
4. Mantener backup local y externo.
5. Evitar borrado fisico de registros.
6. Crear historial, reportes y filtros sobre las tablas reales.

La conversacion actual definio que la responsabilidad principal de Codex sera la logica y persistencia de datos, no el diseno visual.

## Pendientes proximos

### General

- Definir permisos por rol:
  - Administrador
  - Analista
  - Controlador
  - Supervisor
  - Visitante
- Crear politicas RLS concretas para lectura, escritura, anulacion y auditoria.
- Conectar frontend con Supabase usando variables/configuracion publica segura.
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
- Migrar guardado real del registro a `diesel_kardex` y `diesel_movimientos`.
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
