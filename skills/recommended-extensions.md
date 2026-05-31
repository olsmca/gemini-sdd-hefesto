---
name: recommended-extensions
description: Promotes and details the installation of development skills and templates in the environment.
---

# Recommended Skills & Extensions

To achieve a "Next-Level" agentic development flow with **La Forja de Hefesto**, we highly recommend installing and referencing the following extensions and skills in your environment.

## 🛠️ Companion Extensions

Install these using the Gemini CLI command:

1. **`obra/superpowers`**
   - **Command:** `gemini extensions install obra/superpowers`
   - **Utility:** Gives the agent superpowers for high-level operations.

2. **`christianmerkwirth/sddw-gemini`**
   - **Command:** `gemini extensions install christianmerkwirth/sddw-gemini`
   - **Utility:** Companion tools for Spec-Driven Development.

---

## 🧠 Stacks & Backend Templates

Depending on the stack selected during `/sdd:init`, make sure these templates are available or referenced:

- **FastAPI (Python):** Use the `fastapi-backend-template` for structure, configuration, and pre-packaged middleware.
- **Go:** Use the `golang` and `software-backend` guidelines to ensure clean architecture and robust concurrency.
- **Next.js & React (Frontend):** Leverage the `vercel-react-best-practices` skill for App Router, Server Components, and optimized styling.
- **Node.js (TypeScript):** Use the standard `nodejs` workspace structure.

---

## 🚦 SDD Core Skills Reference

Ensure your active Gemini CLI environment has access to the following workspace skills:
- **`brainstorming`**: Guide for requirements gathering and Socratic design.
- **`writing-plans`**: Method for creating granular, atomic task lists in `IMPLEMENTATION_PLAN.md`.
- **`executing-plans`**: Guidelines for implementing changes safely.
- **`verification-before-completion`**: Pre-merge checklist rules.
- **`finishing-a-development-branch`**: Standardized branch cleanup and git merging flow.
