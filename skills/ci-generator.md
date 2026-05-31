---
name: ci-generator
description: Skill to generate customized GitHub Actions CI workflows for linting, testing, and coverage.
---

# CI Generator Skill

Use this skill when adding or updating continuous integration workflows inside the `.github/workflows/` directory.

## Core Directives

1. **Detect Stack:** Inspect the workspace (e.g., presence of `package.json`, `go.mod`, `requirements.txt`, or stack definitions in `GEMINI.md`) to determine the project type.
2. **Path Resolution:** Create or edit `.github/workflows/ci.yml`.
3. **Execution Steps:** Always ensure the generated YAML workflow handles:
   - **Triggering:** Push and Pull Requests on `main`, `master`, and `develop` branches.
   - **Caching:** Configure actions caching for package dependencies (npm cache, go build cache, pip cache) to optimize run times.
   - **Linting:** Format checking and code static analysis.
   - **Testing:** Running the test runner.
   - **Coverage Reporting:** Calculating and displaying code coverage (printing console report or saving coverage artifact).

## Template Workflows

### A. Next.js / Node.js
```yaml
name: Node CI

on:
  push:
    branches: [ main, master, develop ]
  pull_request:
    branches: [ main, master, develop ]

jobs:
  build-and-test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Use Node.js
        uses: actions/setup-node@v4
        with:
          node-version: '20'
          cache: 'npm'
      - run: npm ci
      - run: npm run lint
      - run: npm run build --if-present
      - run: npm test -- --coverage
```

### B. Go (Golang)
```yaml
name: Go CI

on:
  push:
    branches: [ main, master, develop ]
  pull_request:
    branches: [ main, master, develop ]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Set up Go
        uses: actions/setup-go@v5
        with:
          go-version: '1.22'
          cache: true
      - name: Format Check
        run: diff -u <(echo -n) <(gofmt -d .)
      - name: Build
        run: go build -v ./...
      - name: Test with Coverage
        run: go test -v -coverprofile=coverage.txt -covermode=atomic ./...
```

### C. FastAPI (Python)
```yaml
name: Python CI

on:
  push:
    branches: [ main, master, develop ]
  pull_request:
    branches: [ main, master, develop ]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: '3.11'
          cache: 'pip'
      - name: Install dependencies
        run: |
          python -m pip install --upgrade pip
          pip install -r requirements.txt
          pip install pytest pytest-cov
      - name: Lint with black
        run: black --check .
      - name: Test with pytest
        run: pytest --cov=app --cov-report=term-missing tests/
```
