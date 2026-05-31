# GitHub Actions & CI/CD Automation

Automate the development pipeline:

1. **Linter/Formatter:** Run Prettier/ESLint or go fmt / pylint on every PR.
2. **Test Suite:** Execute unit and integration tests on push/PR.
3. **Build Check:** Ensure the project builds successfully before merging.
4. **Deployment:** Preview deployments for every PR, production on merge to `main`.
5. **Security:** Use vulnerability scanning tools in the workflow.
