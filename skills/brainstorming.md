# Brainstorming & Design Refinement

Use this skill before starting any implementation to refine requirements, explore architectural options, and document decisions.

## The Socratic Design Method
1. **Clarify:** Ask the user 3-5 clarifying questions about the functional requirements.
2. **Explore:** Propose 2-3 different architectural approaches (e.g., Server vs. Client state, SQL vs. NoSQL).
3. **Compare:** List the pros and cons of each approach based on the project constraints.
4. **Draft & Commit:** Document the final architecture decision in an Architecture Decision Record (ADR) under `docs/adr/ADR-XXXX-name.md`.

## Quality Gates
- **Security:** Identify potential attack vectors (Auth, Data leaks).
- **Scalability:** How will this handle 10x more data or users?
- **Maintainability:** How easy will it be to refactor this in 6 months?
