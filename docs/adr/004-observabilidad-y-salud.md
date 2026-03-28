# ADR 004: Estrategia de Observabilidad y Salud del Sistema

**Fecha:** 2026-03-28
**Estado:** Propuesto
**Contexto:** Necesitamos asegurar que el sistema sea auditable y que podamos conocer su estado de salud sin entrar al servidor.

**Decisión:**
Implementar un endpoint de `/health` y logs estructurados en formato JSON.

**Justificación:**
1. **Detección Temprana:** El endpoint permite que herramientas externas sepan si la app está caída.
2. **Trazabilidad:** Los logs JSON facilitan la búsqueda de errores en sistemas de monitoreo.

**Consecuencias:**
* Se debe incluir una ruta de health check en la API.
* El pipeline debe validar que los logs se generen correctamente.