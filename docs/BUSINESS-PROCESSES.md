# Procesos de negocio

Este documento describe procesos que tienen evidencia en interfaz, JavaScript y/o migraciones. Los pasos propuestos para módulos sin operación se identifican como pendientes.

## Registro y control de diésel

- **Objetivo:** documentar saldos y movimientos por unidad y turno.
- **Actores:** controlador/operador; supervisor/administrador para revisión o corrección según permisos.
- **Datos:** fecha, unidad, turno, saldo inicial/final, recargas, consumos, sondajes, despachos/transferencias, observaciones y usuario.
- **Reglas:** 2 turnos y clave lógica fecha+unidad+turno; 19 unidades como catálogo base del registro diario; los movimientos entre unidades deben reflejar origen y destino; despacho a plataforma es salida para la barcaza emisora; no se debe borrar historia operativa sin rastro.
- **Flujo principal:** preparar registro del turno → capturar movimientos → validar exclusividad y cantidades → enviar a RPC → persistir kardex/movimientos → recalcular saldos e historial → revisar consulta diaria.
- **Alternativos:** guardar un turno sin movimiento conservando sus saldos; editar/corregir registro histórico y recalcular registros posteriores; exportar detalle o resumen.
- **Validaciones:** requeridos por formulario, cantidades, destinos, sondaje exclusivo y permisos de sesión/RLS.
- **Aceptación:** las existencias del turno y sus movimientos quedan conciliables; el saldo diario respeta las salidas a plataformas; edición histórica actualiza los saldos dependientes.
- **Estado actual:** implementado parcialmente de extremo a extremo; reglas de stock/origen, excepciones y cobertura de anulación requieren aceptación formal del negocio.

## Registro de pasajeros

- **Objetivo:** guardar embarques/desembarques o movimientos entrantes/salientes de pasajeros asociados a nave/turno.
- **Actores:** operador/controlador.
- **Datos:** fecha, movimiento, tipo, embarcación, turno y líneas de contratista/rutina/cantidad.
- **Reglas:** cada línea persiste como registro separado; cantidad >= 0; movimiento se limita a entrante/saliente. Aún no está definida la interpretación de totales, duplicidad o correcciones.
- **Flujo:** completar datos comunes → añadir detalle(s) → verificar total de pantalla → guardar en tabla Supabase.
- **Alternativos:** corregir antes de guardar; recuperar historial no evidenciado en pantalla actual.
- **Validaciones:** sesión, al menos una línea y restricciones SQL.
- **Aceptación:** cada detalle se recupera con fecha, movimiento, nave, turno y autor; la pantalla comunica errores de persistencia.
- **Estado:** captura conectada; consulta y reglas de cierre pendientes.

## Agua tratada

- **Objetivo:** registrar movimientos diarios de agua tratada.
- **Actores:** operador/controlador.
- **Datos:** fecha, nave origen, tipo de movimiento, detalle, cantidad y campos de control específicos del formulario.
- **Reglas:** se conserva detalle de línea; unidades y signos/saldo para cada movimiento deben confirmarse antes de reportar stock consolidado.
- **Flujo:** elegir fecha y nave → ingresar uno o más movimientos → validar → guardar → recargar datos consultables → exportar según opción disponible.
- **Alternativos:** consultar por filtros; descargar formatos de kardex/reporte.
- **Validaciones:** fecha/nave requeridas, cantidades numéricas y permiso RLS.
- **Aceptación:** el registro persistido reaparece en consulta y exportación con datos coincidentes.
- **Estado:** parcial implementado.

## Bitácora y clasificación de eventos

- **Objetivo:** capturar eventos en bruto y normalizarlos para revisión y reporte.
- **Actores:** operador/controlador registra; coordinador/supervisor clasifica/revisa; analista consulta.
- **Datos:** fecha, inicio/fin, nave, tipo de evento, descripción, categoría, estado, responsable y observación de revisión.
- **Reglas:** inicio obligatorio, fin opcional y no anterior al inicio; descripción obligatoria; evento nuevo se crea pendiente; clasificación es proceso separado.
- **Flujo:** registrar evento → consultar línea temporal/filtros → seleccionar categoría → guardar grupo de clasificaciones → consultar/exportar reporte.
- **Alternativos:** filtrar por unidad o todas; filtrar pendientes/clasificados/sin categoría; reporte Excel por fecha/turno.
- **Validaciones:** Auth/RLS y validaciones del RPC; categorías desde catálogo activo.
- **Aceptación:** evento mantiene estado y responsables trazables; filtros no mezclan fechas; reporte coincide con la selección consultada.
- **Estado:** implementado en captura y clasificación; significado exacto de cada transición de revisión requiere validación del negocio.

## Procesos pendientes de definición

No hay flujo operativo comprobado para lubricante, agua de consumo, buceo, horómetros, cargas, rutas, mapa, administración general de reportes/historial, ajustes ni gestión de flota en tiempo real. Para convertirlos en desarrollo verificable se debe definir propósito, iniciador, datos, estados, permisos, excepciones, anulación y salida/reportes antes de aprobar requisitos.

