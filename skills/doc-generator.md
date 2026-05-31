---
name: doc-generator
description: Skill to generate or improve project documentation by analyzing the Git branch name, specifications, and code modifications.
---

# Documentation Generator Skill

Use this skill when running commands like `/sdd:doc` to automatically document, update, or expand guides, API structures, and readme references of a project based on the active development branch.

## 1. Branch and Context Analysis
1. **Detect Feature Context:** Read the active Git branch (`git branch --show-current`) and load the matching specification files from `specs/` (e.g. `specs/spec-[ID]-[feature-name].md`).
2. **Review Spec Goals:** Understand the core functional and technical requirements designed for this specific feature.
3. **Analyze Code Changes:** Run git diff or scan the file paths mentioned in the spec/plan to see how the architecture, data models, or endpoints have actually been implemented.

## 2. Documentation Updates Rules
When generating/updating documentation, you must update the following files if applicable:

- **API Documentation (`docs/api.md` or similar):**
  - If a new HTTP/gRPC endpoint is created, document its URL, method, headers, request schema, response schema, status codes, and provide a curl example.
- **Feature Guides (`docs/features/[feature-name].md`):**
  - Create or append a guide describing how the new feature works, its database schemas, configurations, and core components.
- **Main README (`README.md`):**
  - Update the "Usage" or "Architecture" section in the project's root `README.md` if the new feature introduces changes to how the project runs or is structured.

## 3. Writing Quality Standards
- **Clarity and Precision:** Use code blocks with syntax highlighting for configurations, inputs, and payloads.
- **Up-to-Date State:** Avoid placeholders. Ensure endpoints, model names, and environment variables match the actual implementation in the codebase.
- **TOC and Links:** Update table of contents and file references to ensure navigability.
