# Constitución del Proyecto - gemini-sdd-hefesto

Este archivo define las reglas de diseño, desarrollo y mantenimiento de esta propia extensión para Gemini CLI.

## Misión de la Extensión
Proporcionar un entorno de desarrollo guiado por especificaciones (Spec-Driven Development) robusto, automatizado y de altísima velocidad de iteración, integrando controles estrictos de seguridad, accesibilidad y trazabilidad arquitectónica.

## Principios Arquitectónicos

1. **Habilidades Modulares y Contextuales:**
   - Cada tecnología (FastAPI, Go, Next.js) y guardián de calidad (seguridad, accesibilidad) tiene su propia Skill estructurada en `skills/`.
   - Las habilidades deben estar escritas de forma que puedan inyectarse dinámicamente o ser referenciadas por los comandos.

2. **Comandos Declarativos en TOML:**
   - Todos los comandos del flujo de Hefesto se definen bajo el prefijo `/sdd:`.
   - Los comandos deben guiar paso a paso al LLM mediante prompts claros y asertivos, haciendo uso de comandos del sistema (`git`, `cat`, etc.) para automatizar el flujo de Git y archivos.

3. **Estado Limpio y Desacoplado:**
   - La metadata sobre el contador de especificaciones y la característica actual se almacena de forma oculta en `.gemini/.sdd-state.json`.
   - Los comandos no deben asumir que el archivo de estado es la única fuente de verdad; deben apoyarse en la rama Git activa (`git branch --show-current`) para deducir el contexto actual del desarrollo.

4. **Calidad antes de Completar:**
   - La Definition of Done (DoD) no es negociable. Todo código producido debe pasar por la revisión estática de seguridad (`security-auditor`) y accesibilidad (`a11y-standards`).

## Flujo de Desarrollo de la Extensión
- **Añadir Nuevas Habilidades:** Crear un archivo markdown en `skills/` (o una carpeta con su `SKILL.md`) y documentar su propósito.
- **Modificar Comandos:** Editar los archivos `.toml` correspondientes en `commands/` para mejorar la precisión y el flujo de los prompts.
- **Dogfooding:** Utilizar esta misma extensión para desarrollar sus propias mejoras o correcciones de bugs.

## Instalación para Desarrollo Local
1. Clonar el repositorio.
2. Ejecutar `gemini extensions link .` desde la raíz del proyecto.
3. Usar los comandos `/sdd:init`, `/sdd:feature`, etc., en proyectos de prueba.
