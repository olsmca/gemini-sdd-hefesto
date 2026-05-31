---
name: security-auditor
description: Skill that evaluates code changes for vulnerabilities (OWASP Top 10) before closing features.
---

# Security Auditor - OWASP Top 10 Compliance Guide

This skill is invoked during the `/sdd:done` command to perform a static security audit of all code modifications before finalizing the development branch.

## Core Mandates
You must audit the codebase against the following OWASP vulnerability areas:

### 1. Broken Access Control
- Ensure endpoints verify user permissions.
- Validate that identifier tokens (like IDs in URLs) cannot be easily manipulated to access other users' data (IDOR prevention).
- Check that administrative functions are fully protected and cannot be invoked by unprivileged users.

### 2. Cryptographic Failures
- Ensure data in transit is protected (HTTPS configurations).
- Verify that sensitive information (passwords, tokens) is hashed using strong algorithms (e.g., bcrypt, Argon2) and not stored in plaintext.
- Check that no secrets, API keys, or private credentials are hardcoded in the codebase.

### 3. Injection Prevention
- Validate that all user inputs are sanitized and typed.
- Verify the use of parameterized queries or ORMs instead of string concatenation in SQL queries.
- Ensure command execution or dynamic script evaluation (e.g., `eval`, `exec`) is avoided.

### 4. Insecure Design & Component Vulnerabilities
- Check that third-party dependencies are up to date and scanned for known CVEs.
- Avoid passing sensitive data in query parameters or URL paths.

### 5. Security Misconfiguration
- Verify that default credentials or test ports are disabled in production configurations.
- Ensure detailed error messages (including stack traces) are not returned to the client in production environment.

## Audit Workflow
1. **Identify Modifications:** Review the git diff of the branch to find all added or modified lines.
2. **Scan against Checklist:** For each change, ensure it adheres to the injection, cryptography, access control, and credential policies.
3. **Generate Report:** Report any findings with a description, severity (High/Medium/Low), and recommended remediation. If none are found, state "Security Audit Passed".
