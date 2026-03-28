# ADR 003: Implementación de Feature Flags para Control Dinámico

**Fecha:** 2026-03-28
**Estado:** Aceptado
**Contexto:** Necesitamos una forma de activar o desactivar funciones en tiempo real sin realizar un nuevo despliegue.

**Decisión:**
Se decide implementar Feature Flags mediante variables de entorno configuradas en el archivo `.env`.

**Justificación:**
1. **Despliegue Progresivo:** Permite subir código a producción pero mantenerlo oculto hasta que esté listo.
2. **Rollback Rápido:** Si una función falla, se puede apagar instantáneamente cambiando una variable de entorno.

**Consecuencias:**
* El código debe incluir condicionales `if (flag_active)` para las nuevas funciones.
* Se debe documentar cada flag en el archivo `config/.env.example`.