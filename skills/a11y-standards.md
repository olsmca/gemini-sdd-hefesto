---
name: a11y-standards
description: Skill for frontend projects that ensures UI changes pass accessibility rules (WCAG, ARIA, keyboard accessibility).
---

# Accessibility (A11y) Standards Guide

This skill is invoked during the `/sdd:done` command for projects with a frontend stack (e.g., Next.js/React) to verify that all UI additions and changes are accessible to all users.

## Core Checklist

### 1. Semantic HTML
- Ensure buttons use `<button>`, links use `<a>`, and headings (`<h1>`-`<h6>`) follow a logical, sequential hierarchy without skipping levels.
- Use landmark elements like `<header>`, `<nav>`, `<main>`, `<footer>`, and `<section>` to structure page layouts.

### 2. ARIA Roles & Attributes
- For interactive elements that are not native HTML (e.g., custom dropdowns, tabs), ensure proper `role` and state attributes are used (e.g., `aria-expanded`, `aria-selected`, `aria-controls`).
- Provide alternative text for images via `alt` attributes. If an image is purely decorative, use `alt=""` or `aria-hidden="true"`.
- Use `aria-label` or `aria-labelledby` on elements that lack visible text labels (e.g., icon-only buttons).

### 3. Keyboard Navigation
- Ensure all interactive elements are focusable and navigable using the `Tab` key.
- Custom interactive controls must support standard keyboard interactions (e.g., `Enter` or `Space` to activate, arrow keys for navigation).
- A visible focus indicator (e.g., outline) must always be present when navigating via keyboard. Never use `outline: none` without providing a distinct focus style.

### 4. Form Accessibility
- Ensure every form control (input, select, checkbox) has a corresponding `<label>` linked via the `for`/`htmlFor` attribute.
- Ensure error messages are associated with their input fields using `aria-describedby`.

## Audit Workflow
1. **Locate UI Elements:** Look for components, HTML elements, or styles modified in this branch.
2. **Review Elements:** Check the elements against semantic tags, keyboard focus, ARIA attributes, and label requirements.
3. **Report:** Point out any missing alt tags, non-semantic interactive tags, or missing focus indicators. If all checks pass, output "Accessibility Audit Passed".
