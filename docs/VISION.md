# Visión funcional de Porto ERP

## Propósito

La aplicación se presenta como un ERP web para administrar recursos y operaciones de una empresa marítima que presta servicios desde un muelle. El repositorio identifica a la organización como ALM/ALM ERP. La evidencia funcional disponible se concentra en registros operativos de flota, diésel, agua tratada, pasajeros y bitácora; no demuestra todavía una suite ERP integral.

## Usuarios y valor esperado

El sistema busca centralizar el registro por fecha, nave y turno, facilitar consulta y consolidación de operaciones, y dar seguimiento a actividades que luego pueden ser clasificadas o revisadas. Los roles configurados en base de datos son administrador, analista, controlador, supervisor, visitante y coordinador. Las pantallas y políticas no prueban que todos los permisos estén completamente alineados en todos los módulos.

## Alcance observado

- Operación disponible parcialmente: registro/consulta de diésel, pasajeros, agua tratada y bitácora; autenticación Supabase; consulta y clasificación de eventos; reportes/exportaciones puntuales.
- Prototipos visuales: dashboard, vista de flota y ALM AI, con diferentes niveles de conexión a datos.
- Navegación sin proceso implementado: lubricante, agua de consumo, buceo, horómetros, cargas, mapa, rutas, reportes generales, historial, usuarios y ajustes.

El README documenta el propósito, reglas deseadas y planes. En esta visión, una afirmación se considera implementada solo cuando la interfaz tiene una operación conectada verificable en `script.js` y/o una migración/RPC pertinente. La existencia de una tabla o pantalla por sí sola no basta.

## Objetivos funcionales

1. Capturar datos operativos con fecha, unidad/nave, turno y usuario cuando aplique.
2. Consultar registros históricos y resúmenes de operación.
3. Representar correctamente movimientos de recursos entre unidades, especialmente despachos de diésel a plataformas.
4. Separar registro operativo y clasificación/revisión posterior en la bitácora.
5. Evolucionar los módulos pendientes con validación, permisos, historial y reportes definidos.

## Fuera de alcance confirmado

No hay evidencia suficiente para afirmar que Porto ERP ya cubre contabilidad, compras, ventas, nómina, mantenimiento integral, gestión documental o planificación empresarial general. Deben tratarse como alcance por definir, no como capacidades actuales.

## Riesgos funcionales conocidos

- El README advierte que partes de autenticación/prototipo y persistencia local no son adecuadas para información sensible. En el código, el login actual usa Supabase Auth; `localStorage` conserva preferencias y una copia de trabajo del kardex, por lo que se debe confirmar el uso efectivo y las reglas de recuperación.
- La fórmula y el origen oficial del stock de diésel han recibido ajustes en migraciones. Deben mantenerse como reglas trazables y verificables.
- Los catálogos operativos aparecen parcialmente fijados en la interfaz, mientras las tablas ofrecen catálogos administrables.
- Las pantallas vacías pueden crear una expectativa de disponibilidad mayor a la función real.

