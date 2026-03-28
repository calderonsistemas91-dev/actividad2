# ADR 002: Gestión de Base de Datos mediante Migraciones Automáticas

**Fecha:** 2026-03-28
**Estado:** Propuesto
**Contexto:** El proyecto requiere que la base de datos evolucione junto con el código de forma auditable y reproducible en los entornos de Stage y Producción.

**Decisión:**
Se decide implementar una herramienta de migraciones (como Flyway o Liquibase) para gestionar el esquema de la base de datos.

**Justificación:**
1. **Auditoría:** Cada cambio en la base de datos queda registrado como un archivo versionado en Git.
2. **Automatización:** El pipeline de CI/CD puede ejecutar las migraciones automáticamente al desplegar en Stage.
3. **Consistencia:** Evita el error humano de olvidar ejecutar un script SQL manualmente en diferentes entornos.

**Consecuencias:**
* Todos los cambios de esquema deben realizarse mediante archivos .sql numerados.
* Se prohíbe realizar cambios manuales directamente en la base de datos de los entornos protegidos.