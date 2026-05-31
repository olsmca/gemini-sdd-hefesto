---
name: project-scaffolder
description: Skill to generate clean project scaffolding for React/Next.js, Go, FastAPI, and Node.js.
---

# Project Scaffolder Skill

Use this skill when initializing or structuring a new project repository. It defines templates for standard, production-ready directory layouts and core configuration files.

## 1. Next.js / React (Frontend & Fullstack)
Generates a modern React app structure under Next.js App Router:
- **Folders:**
  - `app/` (Next.js pages, layouts, and Server Actions)
  - `components/ui/` (Reusable atom components)
  - `hooks/` (Custom client-side hooks)
  - `lib/` (Utility functions, DB client init)
  - `tests/` (Vitest/React Testing Library files)
- **Config Files:**
  - `package.json` (Includes React, Next, Tailwind, Vitest, Prettier, ESLint)
  - `tsconfig.json` (TypeScript parameters and aliases like `@/*`)
  - `tailwind.config.js` (Tailwind grid settings)
  - `vite.config.ts` (Vitest configuration)

## 2. FastAPI (Python Backend)
Generates an API-centric Python project structure:
- **Folders:**
  - `app/` (Application core)
    - `app/main.py` (FastAPI instance and middlewares)
    - `app/api/` (API route handlers)
    - `app/core/` (Configurations, security)
    - `app/models/` (SQLAlchemy/SQLModel classes)
    - `app/schemas/` (Pydantic validation schemas)
    - `app/services/` (Business domain services)
  - `tests/` (Pytest files)
- **Config Files:**
  - `requirements.txt` (FastAPI, uvicorn, pydantic, sqlalchemy, pytest, httpx)
  - `Dockerfile` (Multi-stage build Docker configuration)
  - `pytest.ini` (Pytest configurations)

## 3. Go (Backend Clean Architecture)
Generates an idiomatic Go microservice layout:
- **Folders:**
  - `cmd/app/` (Main entry point)
  - `internal/` (Private application code)
    - `internal/domain/` (Entities and business contracts)
    - `internal/service/` (Use cases/core business logic)
    - `internal/repository/` (DB persistence adapters)
    - `internal/handler/` (HTTP or gRPC transport handlers)
  - `pkg/` (Public libraries/shared helpers)
- **Config Files:**
  - `go.mod` (Go module setup)
  - `Makefile` (Build, run, format, and test commands)
  - `Dockerfile` (Go scratch/alpine builder dockerfile)

## 4. Node.js (TypeScript Backend)
Generates a structured TypeScript backend layout:
- **Folders:**
  - `src/` (Source files)
    - `src/index.ts` (Server listener)
    - `src/routes/` (Express/Fastify controllers)
    - `src/services/` (Services layer)
    - `src/models/` (DB definitions)
  - `tests/` (Jest/Vitest execution files)
- **Config Files:**
  - `package.json` (Express, TypeScript, Vitest, ESLint)
  - `tsconfig.json` (TS configuration)
