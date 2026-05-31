---
name: test-generator
description: Skill to generate and enhance unit tests based on functional specs, technical specs, and active feature branch.
---

# Test Generator & Enhancer Skill

Use this skill when attempting to generate, refactor, or improve unit tests based on specifications. It ensures the written tests match the Criterios de Aceptación (Acceptance Criteria) of the functional specification.

## 1. Specification Mapping
1. **Locate Specifications:** Extract the active feature name from the Git branch. Load `specs/spec-[ID]-[feature-name].md` (Functional) and `specs/technical-spec-[ID]-[feature-name].md` (Technical).
2. **Harvest Acceptance Criteria:** List all acceptance criteria, validation rules, and error scenarios defined in the functional spec.
3. **Map to Test Code:** For each criterion, verify if there is an existing test case in the test files (`tests/` or files ending in `_test` / `.test`).

## 2. Test Generation Rules
If a criterion or scenario is missing from the test suite:
- **Write Unit Tests:** Generate the corresponding test implementation matching the language of the stack.
- **Mock Dependencies:** Ensure database queries, network requests, or third-party APIs are mocked appropriately so tests run fast and isolated.
- **GWT Structure:** Enforce the Given-When-Then comment structure to make tests readable (collaborate with the `coverage-improver` guidelines).
- **Edge Cases:** Include tests for invalid inputs, missing fields, rate limits, and expected exception cases.

## 3. Execution Verification
- After generating tests, run the test runner command (e.g. `npm test`, `go test`, `pytest`) to verify that the new tests compile, execute, and pass (or fail if running in RED phase of TDD).
