# Requisitos funcionales y no funcionales

## Convenciones de estado

- **Implementado:** el flujo está conectado con persistencia/consulta comprobable en el repositorio.
- **Parcial:** existe una parte del flujo, faltan capacidades o reglas para considerar el proceso cerrado.
- **Pendiente:** capacidad anunciada o estructura prevista sin flujo de usuario conectado.
- **Propuesto:** mejora derivada del análisis; no describir como capacidad actual.

## Requisitos funcionales

| ID | Requisito | Estado / evidencia |
|---|---|---|
| RF-01 | El sistema autentica usuarios y obtiene nombre/rol desde perfiles asociados a Supabase Auth. | Implementado parcialmente; frontend y migraciones de perfiles/RLS |
| RF-02 | El usuario autorizado registra diésel por fecha, unidad y turno. | Implementado; RPC `registrar_diesel`, restricción única y formulario |
| RF-03 | El registro de diésel captura recargas, consumo, sondajes, despacho/transferencia y observaciones. | Implementado, sujeto a reglas detalladas en migraciones |
| RF-04 | Un despacho a plataforma impacta como salida en la unidad que entrega combustible. | Regla implementada en migraciones recientes; requiere prueba/casos de aceptación del negocio |
| RF-05 | El usuario consulta kardex diario y resumen consolidado de diésel. | Implementado mediante vistas/consulta |
| RF-06 | El sistema permite corregir datos históricos de diésel recalculando saldos afectados. | Parcial/implementado a nivel RPC; permisos y trazabilidad de corrección deben verificarse |
| RF-07 | El usuario registra movimientos de pasajeros por líneas de contratista/rutina/cantidad. | Implementado; POST a `pasajeros_registros` |
| RF-08 | El usuario consulta/exporta historial de pasajeros. | Parcial; vistas SQL presentes, pero cobertura de interfaz no confirmada |
| RF-09 | El usuario registra movimientos de agua tratada y consulta los datos guardados. | Parcial; tabla y guardado Supabase disponibles |
| RF-10 | El usuario registra eventos de bitácora con fecha/hora/nave/descripcion. | Implementado por RPC |
| RF-11 | Un clasificador asigna categoría y revisa eventos pendientes. | Implementado por RPC e interfaz; transiciones deben verificarse con negocio |
| RF-12 | El usuario consulta una línea temporal y genera reporte de bitácora. | Implementado parcialmente; exportación Excel y filtros en frontend |
| RF-13 | El sistema ofrece módulos de lubricante, agua de consumo, buceo, horómetros y cargas. | Pendiente; pantallas placeholder, algunas tablas previstas |
| RF-14 | El sistema ofrece mapas y rutas operativas. | Pendiente; UI placeholder y tablas de rutas previstas |
| RF-15 | El sistema ofrece reportes generales, historial, administración de usuarios y ajustes. | Pendiente como pantallas/flujo integrado; existencia parcial de vistas, perfiles y auditoría en base |
| RF-16 | El sistema permite exportar kardex detallado y resumen diario de diésel. | Parcial/implementado en vistas y herramientas de exportación; validar formatos y permisos |

## Historias de usuario verificables

- Como **controlador**, quiero registrar un turno de diésel por nave, para mantener el saldo y los movimientos operativos del turno. **Criterio:** el guardado crea/actualiza un registro único por fecha, nave y turno y refleja sus movimientos en consulta.
- Como **controlador**, quiero registrar despachos a plataformas, para reflejar la disminución de stock de la barcaza que entrega. **Criterio:** origen y destino quedan identificados y el cálculo del saldo deduce la cantidad despachada.
- Como **operador**, quiero registrar pasajeros por movimiento, embarcación, turno y contratista/rutina, para documentar el transporte. **Criterio:** cada línea queda persistida y se valida una cantidad no negativa.
- Como **operador**, quiero registrar eventos con hora y nave, para dejar constancia cronológica de la operación. **Criterio:** un evento nuevo queda pendiente de clasificación y se puede recuperar mediante filtro.
- Como **coordinador o supervisor autorizado**, quiero clasificar eventos pendientes, para ordenar la bitácora por tipo de actividad. **Criterio:** categoría, estado y responsable quedan persistidos y visibles tras recarga.
- Como **analista**, quiero consultar/exportar movimientos de diésel y bitácora por periodo, para preparar reportes operativos. **Criterio:** exportación respeta filtros y concuerda con los registros visibles.

## Requisitos no funcionales

### Confirmados como requisitos/intención en el repositorio

- **RNF-01 Seguridad de credenciales:** no incluir secretos privilegiados en frontend; Auth administra contraseñas. README declara no exponer `service_role` ni subir `.env`.
- **RNF-02 Control de acceso:** restringir lectura/escritura por rol mediante RLS y comprobar permisos por operación. Implementación parcial en migraciones; debe probarse integralmente.
- **RNF-03 Trazabilidad:** registrar responsable y estado; evitar eliminación física de movimientos críticos. Hay estados `vigente/anulado`, tabla auditoría y política declarada de kardex append-only, pero no debe asumirse aplicada a todas las operaciones.
- **RNF-04 Integridad:** aplicar claves únicas y restricciones de dominio/cantidad/fechas en base de datos; evidenciado para varios módulos.
- **RNF-05 Exportabilidad y recuperación:** exportar registros y respaldar/restaurar información. Exportaciones específicas existen; backups y prueba de restauración se describen como previstos, no como servicio implementado.
- **RNF-06 Usabilidad operativa:** permitir registro por turno, consulta por fecha/unidad y mostrar errores comprensibles; evidencia en pantallas actuales.
- **RNF-07 Despliegue:** cliente web estático publicado en GitHub Pages según README; backend Supabase.

### Propuestas por especificar y medir

- **RNF-P01 Disponibilidad:** acordar horario operativo, objetivo mensual y comportamiento de contingencia sin conexión.
- **RNF-P02 Rendimiento:** fijar tiempos máximos para carga/guardado/consulta con volúmenes previstos.
- **RNF-P03 Auditoría:** definir eventos auditables, inmutabilidad, retención y consulta por rol.
- **RNF-P04 Recuperación:** establecer RPO/RTO, frecuencia, destino y ensayo periódico de restauración.
- **RNF-P05 Accesibilidad y compatibilidad:** definir navegadores/dispositivos de operación y conformidad de accesibilidad.
- **RNF-P06 Calidad de datos:** normalizar catálogos, unidades de medida, huso horario, decimales, fechas, duplicados y criterios de anulación.

## Reglas de negocio transversales

1. Los registros operativos deben incluir periodo y unidad responsable cuando el proceso aplique.
2. Las correcciones y anulaciones deben preservar trazabilidad; no borrar historia crítica.
3. Los usuarios solo pueden realizar acciones permitidas por rol y estado.
4. No inferir saldos a partir de movimientos si la fórmula de ese recurso no está aprobada.
5. Separar datos fuente del resumen/exportación; un consolidado no debe duplicar el detalle.
6. Catálogos de unidades, turnos, tipos y categorías deben tener una fuente de verdad identificable.

## Pendientes funcionales prioritarios

1. Confirmar fórmula y origen de stock diésel, horarios de turno, unidades, excepciones y flujo de anulación.
2. Definir reglas de pasajeros: significado de tipo, entradas/salidas, cancelación y reporte neto.
3. Cerrar catálogo, movimientos, unidades y saldo de agua tratada; distinguir lo que ya se prueba de la operación real.
4. Acordar estados y responsabilidades de revisión de bitácora, incluidas observación, validación y anulación.
5. Especificar permisos por rol para cada operación y probar RLS.
6. Definir alcance y casos de uso para pantallas placeholder antes de abrir tareas de implementación.
7. Confirmar si dashboard, flota y AI consumen información real o solo demo/prototipo, y documentar límites visibles.

