# 🛠️ gemini-sdd-hefesto (La Forja de Hefesto)

La extensión definitiva de **Spec-Driven Development (SDD)** para Gemini CLI. Diseñada para automatizar el ciclo completo de ingeniería de software con un enfoque ágil, iterativo, seguro y de alta calidad. 

Hefesto forja software robusto, atómico e incremental a partir de especificaciones concisas, guiando al desarrollador y al agente en cada paso del proceso.

---

## 🚀 Características Clave (Next-Level)

1. **Inicialización Interactiva e Inyección Dinámica:** El comando `/sdd:init` pregunta interactivamente por el stack tecnológico (Next.js/React, Go, FastAPI, Node.js) e inyecta solo los principios y habilidades necesarias en tu `GEMINI.md`.
2. **Historial de Decisiones Inmutable (ADR):** `/sdd:brainstorm` genera registros de decisión arquitectónica (Architecture Decision Records) en `docs/adr/` antes de escribir código.
3. **Autodetección de Contexto por Git:** Los comandos `/sdd:plan` y `/sdd:build` detectan automáticamente la rama Git activa para saber exactamente en qué feature estás trabajando, sin depender únicamente de archivos de estado compartidos.
4. **Estado Oculto y Limpio:** Toda la metadata interna de la extensión se gestiona bajo el capó en `.gemini/.sdd-state.json`.
5. **Comando de Deshacer (Rollback):** `/sdd:undo` revierte la última tarea atómica en caso de error, haciendo un rollback automático del último commit/cambio en Git y restableciendo el plan.
6. **Definición de Done (DoD) con Auditorías:** `/sdd:done` obliga a pasar dos guardianes de calidad: `security-auditor` (evaluación OWASP Top 10) y `a11y-standards` (accesibilidad web).

---

## 📦 Instalación

Para instalar o enlazar esta extensión localmente en tu Gemini CLI:

```bash
# Navega al directorio de la extensión
cd gemini-sdd-hefesto

# Enlaza la extensión a tu instalación local de Gemini CLI
gemini extensions link .
```

---

## 🛠️ Flujo de Trabajo y Comandos

El ciclo de desarrollo en **La Forja de Hefesto** consta de los siguientes pasos:

### 1. Inicializar el Entorno
```bash
/sdd:init
```
* **Acción:** Te preguntará qué stack técnico utilizarás en el proyecto. Crea la estructura de carpetas (`specs/`, `tests/`, `docs/adr/`), inicializa `.gemini/.sdd-state.json` e inyecta las habilidades del stack elegido en `GEMINI.md`.

### 2. Idear y Documentar Decisiones
```bash
/sdd:brainstorm
```
* **Acción:** Inicia una sesión de brainstorming socrático basada en el stack y genera un archivo de decisión arquitectónica (`docs/adr/ADR-XXXX-nombre.md`).

### 3. Crear una Feature y su Rama
```bash
/sdd:feature "nombre-feature"
```
* **Acción:** Incrementa el contador de specs en `.gemini/.sdd-state.json`, crea una rama Git con el formato `feature/spec-[counter]-[nombre]` y genera el archivo de especificación funcional en `specs/spec-[counter]-[nombre].md`.

### 4. Especificación Técnica
```bash
/sdd:spec
```
* **Acción:** Crea la especificación técnica en `specs/technical-spec-[counter]-[nombre].md` detallando contratos de API, esquemas de datos y estrategia de pruebas.

### 5. Planificación e Implementación Atómica
```bash
/sdd:plan
/sdd:build
```
* **`/sdd:plan`**: Auto-detecta la rama actual de git y genera un `IMPLEMENTATION_PLAN.md` con tareas atómicas y sus pasos de verificación.
* **`/sdd:build`**: Lee el plan, ejecuta la siguiente tarea atómica en un flujo TDD (Red-Green-Refactor) y verifica los resultados.

### 6. Deshacer el Último Paso (Rollback)
```bash
/sdd:undo
```
* **Acción:** Revierte el último commit/cambio de código (`git reset --hard HEAD~1`) y devuelve la última tarea marcada como completada en `IMPLEMENTATION_PLAN.md` a su estado pendiente `[ ]`.

### 7. Auditoría de Calidad y Cierre
```bash
/sdd:done
```
* **Acción:** Ejecuta las pruebas del proyecto, realiza una auditoría de seguridad OWASP con `security-auditor` y una revisión de accesibilidad con `a11y-standards`. Si pasa las validaciones, apoya en el merge de la rama y limpia el estado local de la feature.

---

## 🧠 Habilidades Integradas (Skills)

La extensión incluye habilidades predefinidas para orientar las respuestas del agente Gemini:
* **`sdd-core`:** Reglas metodológicas esenciales de SDD.
* **`security-auditor`:** Auditoría de seguridad estática basada en OWASP Top 10.
* **`a11y-standards`:** Reglas de accesibilidad (ARIA, contraste, estructura HTML semántica).
* **`recommended-extensions`:** Recomendación de herramientas como `using-superpowers`, `fastapi-backend-template`, etc.
* **`backend-standards` / `vercel-react` / `brainstorming` / `tdd`:** Guías de desarrollo rápido y mejores prácticas del stack.

---

## 📄 Licencia
MIT
