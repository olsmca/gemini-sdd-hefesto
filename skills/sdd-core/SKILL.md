---
name: sdd-core
description: Core methodology for Spec-Driven Development including Socratic brainstorming and advanced planning.
---

# SDD Core Methodology

This skill implements the Spec-Driven Development workflow optimized for speed and iteration.

## 1. Socratic Brainstorming
- Never start coding without a design concept.
- Ask the user clarifying questions to uncover hidden requirements.
- Explore architectural tradeoffs before finalizing the spec.

## 2. Advanced Planning
- Decompose specs into atomic tasks (5-10 mins).
- Every task must have a verification step.
- Track progress in `IMPLEMENTATION_PLAN.md`.

## 3. Iteration & Speed
- Focus on MVP (Minimum Viable Product).
- Use specs as executable artifacts that evolve with each iteration.
- Maintain an internal state file in `.gemini/.sdd-state.json` to track spec counters and feature status.
