# ADR 001: Selección de Estructura de Repositorio (Monorepo)

**Fecha:** 2026-03-27
**Estado:** Propuesto
[cite_start]**Contexto:** Para el proyecto final, se requiere gestionar el código fuente de una API y una interfaz Web[cite: 4]. [cite_start]Necesitamos una estructura que facilite la integración continua (CI) y el despliegue de artefactos inmutables[cite: 4, 22].

**Decisión:**
Se ha optado por una estructura de **Monorepo**. Ambos componentes (API y Web) residirán en el mismo repositorio Git, organizados en carpetas independientes.

**Justificación:**
1. [cite_start]**Simplicidad de CI/CD:** Permite gestionar un solo flujo de trabajo para la publicación de versiones coordinadas (v0.1.0, v0.2.0, etc.)[cite: 19].
2. [cite_start]**Consistencia:** Facilita el mantenimiento de los contratos de configuración y secretos en un solo lugar seguro[cite: 8, 20].
3. [cite_start]**Trazabilidad:** Los Pull Requests pueden incluir cambios tanto en el frontend como en el backend, manteniendo una historia unificada[cite: 18, 24].

**Consecuencias:**
* Se deben configurar filtros en los pipelines para evitar ejecuciones innecesarias si solo cambia un componente.
* [cite_start]Requiere una disciplina estricta en el nombrado de carpetas y convenciones de commits[cite: 3].