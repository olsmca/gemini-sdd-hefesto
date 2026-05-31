# Advanced Plan Writing & Task Decomposition

Break down complex designs into atomic, verifiable tasks.

## Task Decomposition Rules
1. **Atomicity:** Each task should take 5-10 minutes to implement.
2. **Specificity:** Define exact file paths and the logic to be added/modified.
3. **Verification:** Every task must have a clear verification step (e.g., unit test, curl command, visual inspect).
4. **Dependencies:** Order tasks logically to avoid blockers.

## Plan Structure (`IMPLEMENTATION_PLAN.md`)
- **Phase 1: Foundation** (Environment, Config, Schemas).
- **Phase 2: Core Logic** (API, Domain logic, Services).
- **Phase 3: UI & Integration** (Components, Hooks, Pages).
- **Phase 4: Final Verification** (E2E, Performance, Linting, Quality Audits).
