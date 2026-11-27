# Módulos de Porto ERP

## Mapa

| Área | Propósito observado | Estado comprobado |
|---|---|---|
| Acceso y perfiles | Autenticar y obtener el perfil/rol | Parcialmente implementado con Supabase Auth; administración visual de usuarios pendiente |
| Dashboard | Resumen visual de recursos/operaciones | Parcial/prototipo; no asumir que todas las tarjetas derivan de datos actuales |
| Diésel | Registrar kardex por nave y turno, movimientos, sondajes; consultar/exportar | Implementado con RPC, vistas, migraciones de reglas, edición histórica y consulta; revisar límites y consistencia |
| Pasajeros | Registrar movimiento entrante/saliente, tipo, nave, turno y detalle por contratista/rutina | Implementado para guardar en `pasajeros_registros`; historial/consulta completa no evidenciada en la pantalla de captura |
| Agua tratada | Registrar movimientos y consultar/exportar registros | Implementado parcialmente con persistencia Supabase y migración de tabla; validar cobertura de consulta/exportación y políticas |
| Bitácora | Registrar eventos por nave/fecha/hora, revisar, clasificar y consultar/exportar | Implementado con RPC y tablas; hay flujo de clasificación y reporte Excel |
| Lubricante | Control de recurso | Propuesto; pantalla placeholder. `recurso_movimientos` es estructura de datos, no módulo operativo conectado |
| Agua de consumo | Control de recurso | Propuesto; pantalla placeholder |
| Buceo | Control de actividades de buceo | Propuesto; pantalla placeholder |
| Horómetros | Lecturas por fecha, unidad y turno | Propuesto; tabla prevista, interfaz placeholder |
| Cargas | Registro de cargas/origen/destino | Propuesto; tabla prevista, interfaz placeholder |
| Mapa | Visualización geográfica de operaciones | Propuesto; placeholder |
| Naves | Información/estado de flota | Parcial; visualización de flota y modelo 3D, sin prueba de datos operativos en vivo |
| Rutas | Catálogo de rutas y puntos | Propuesto; tablas previstas, interfaz placeholder |
| ALM AI | Asistente conversacional | Parcial; UI, historial local e invocación a función edge existen; capacidades/datos autorizados deben verificarse |
| Cumpleaños | Resumen de cumpleaños/notificaciones | Parcial/prototipo; no se evidencia en el esquema una fuente persistente de personas/cumpleaños |
| Reportes generales | Consultas transversales | Propuesto; placeholder. Existen reportes específicos de diésel, pasajeros/bitácora en vistas o exportación |
| Historial/auditoría | Trazabilidad transversal | Propuesto como pantalla; existen tablas y lógica histórica de diésel, pero no historial general conectado |
| Usuarios | Administración de usuarios y roles | Parcial a nivel Auth/perfiles/RLS; pantalla placeholder |
| Ajustes | Configuración del sistema | Propuesto; placeholder |

## Fichas funcionales de módulos operativos

### Diésel

- **Objetivo:** mantener registro de existencias y movimientos de combustible por fecha, unidad y turno.
- **Actores:** controlador/operador que registra; supervisor/coordinador/analista según permisos; administrador.
- **Descripción:** formulario con cabecera de fecha, origen y turno; módulos de recarga, sondaje, tripulación, consumo, despacho y observaciones; consulta diaria y exportaciones previstas/implementadas mediante vistas y herramientas del frontend.
- **Datos necesarios:** fecha, unidad/nave, turno; stock inicial/final; recarga, consumo, despacho/transferencia, sondaje; detalles de movimientos, observaciones y usuario.
- **Reglas de negocio comprobadas:** clave única fecha+unidad+turno; dos turnos diarios; catálogo base de 19 unidades usado para la base diaria; sondaje de reingreso o diferencia mutuamente excluyentes; destinos de despachos/transferencias; los despachos a plataformas deben descontarse a la unidad que entrega. Las migraciones recalculan kardex e historial.
- **Flujo principal:** seleccionar fecha, nave origen y turno → completar módulos aplicables → validar → guardar por RPC `registrar_diesel` → recalcular historial → actualizar consulta/resumen.
- **Alternativos:** agregar/editar registro según modo; consultar todos los registros del día o filtrar por unidad/turno; corregir históricamente con recálculo.
- **Validaciones:** campos requeridos y reglas de cada módulo; cantidades/movimientos sujetos a validación SQL y lógica del formulario; diferenciar despacho de transferencia según unidad/regla.
- **Criterios de aceptación:** el guardado crea/actualiza el kardex del turno; los movimientos quedan vinculados; despacho de plataforma reduce saldo de la nave entregadora; un sondaje no puede tener simultáneamente reingreso y diferencia; consulta diaria consolida sin duplicar stock inicial.
- **Estado actual:** implementado, con reglas de cálculo complejas sujetas a validación operativa continua.

### Pasajeros

- **Objetivo:** registrar movimientos de pasajeros vinculados a una operación marítima.
- **Actores:** operador/controlador; roles de consulta según políticas.
- **Descripción:** captura fecha, movimiento entrante/saliente, tipo de pasajero, embarcación, turno y múltiples líneas de contratista/rutina/cantidad. Envía registros a `pasajeros_registros`.
- **Datos necesarios:** fecha, movimiento, tipo, embarcación, turno, contratista, rutina, cantidad, usuario y estado.
- **Reglas:** movimiento `entrante` o `saliente`; cantidad entera no negativa; cada línea genera un registro. El significado de tipo de pasajero y el efecto neto de entradas/salidas requieren definición de negocio.
- **Flujo principal:** completar cabecera → añadir una o más líneas → revisar suma visual → guardar líneas en Supabase.
- **Alternativos:** corregir formulario antes del guardado; no se evidencia edición posterior en la vista.
- **Validaciones:** sesión válida, al menos una línea; constraints de base para cantidad/movimiento.
- **Criterios de aceptación:** cada línea se persiste con su cabecera y usuario; la suma mostrada coincide con las líneas; no acepta cantidad negativa.
- **Estado actual:** parcial implementado; registro disponible, catálogo/historial/exportación y reglas entrante/saliente pendientes de cierre.

### Agua tratada

- **Objetivo:** registrar operaciones de agua tratada y consultar los movimientos.
- **Actores:** operador/controlador; supervisor/analista según permisos.
- **Descripción:** formulario por fecha y nave con tipos/detalles de movimiento, cantidades y campos operativos; puede guardar varias filas en `AguaTratada`; hay funciones de carga y exportación referidas en el frontend.
- **Datos necesarios:** fecha, nave, movimiento/detalle, cantidad, unidad, datos de guía/zona/tipo de nave según formulario, observaciones, estado y autor.
- **Reglas:** no se pudo confirmar una fórmula de saldo integral común; conservar valores por línea y no inferir stock sin regla aprobada.
- **Flujo principal:** ingresar cabecera y líneas → validar → guardar en Supabase → limpiar formulario y recargar registros.
- **Alternativos:** consulta por filtros y exportación según formato seleccionado.
- **Validaciones:** obligatorios y valores numéricos del formulario/RLS; revisar cobertura exacta por tipo de movimiento.
- **Criterios de aceptación:** cada movimiento guardado se recupera con los mismos datos y respeta filtros; las exportaciones reflejan el conjunto consultado.
- **Estado actual:** parcial implementado.

### Bitácora

- **Objetivo:** registrar eventos operativos y permitir su clasificación y consulta posterior.
- **Actores:** controlador/administrador registra; roles clasificadores (incluye coordinador/supervisor según políticas) revisan; analistas consultan.
- **Descripción:** evento con fecha, horas, nave, tipo y descripción; estado inicial pendiente. Pantallas permiten línea temporal, filtros, clasificación por categoría y reporte/exportación Excel.
- **Datos necesarios:** fecha, hora inicio, hora fin opcional, nave, tipo, descripción, categoría/estado, usuario y observaciones de revisión.
- **Reglas:** descripción no vacía; hora fin no menor que inicio; sin fin puede quedar duración no calculada; estados diferencian pendiente, clasificado, validado, observado y anulado.
- **Flujo principal:** registrar evento vía RPC → consultar por fecha/nave → seleccionar categoría y guardar clasificación → generar consulta/reporte.
- **Alternativos:** registrar sin hora fin si el evento sigue abierto; filtrar eventos sin categoría o por estado; revisar eventos de todas las naves.
- **Validaciones:** autenticación y rol; fecha, hora inicial, nave y descripción obligatorias; orden temporal.
- **Criterios de aceptación:** nuevo evento queda pendiente; clasificación actualiza categoría/estado y responsable; reporte respeta filtros de fecha/turno/nave.
- **Estado actual:** implementado en registro, clasificación y reporte con alcance de validación pendiente de confirmar contra usuarios de negocio.

## Dependencias entre módulos

- Diésel depende de catálogos de unidades/turnos, perfiles/roles y movimientos; sus exportaciones dependen de vistas SQL.
- Bitácora depende de unidades, perfiles, catálogo de tipos y categorías.
- Pasajeros depende de unidades, turnos y perfiles; comparte algunas entidades operativas con bitácora.
- Agua tratada y futuros módulos de recurso dependen de unidades, perfiles y catálogos/unidades de medida por definir.
- Rutas/mapa dependerían del catálogo de rutas y puntos geográficos; hoy no hay flujo conectado.
- Reportes generales e historial dependen de semántica y estados consistentes de los módulos fuente.

