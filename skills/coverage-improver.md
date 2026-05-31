---
name: coverage-improver
description: Language-agnostic skill that improves code coverage by writing unit tests according to the Given-When-Then (GWT) standard.
---

# Test Coverage Improver Skill (GWT Standard)

Use this skill when attempting to improve code coverage, identify untested branches, and write missing unit tests. It is designed to be language-agnostic and enforces the Given-When-Then (GWT) structuring convention.

## 1. Analysis Workflow
1. **Identify Target Files:** Locate the business logic, utilities, or API services that lack sufficient test coverage. Look at test coverage reports or inspect source files alongside their respective test files (e.g., `math.go` -> `math_test.go`, `auth.ts` -> `auth.test.ts`).
2. **Scan for Execution Branches:** Look for untested branches such as:
   - Error handling statements (e.g., `if err != nil`, `catch (error)`, `except Exception`).
   - Boundary inputs (null, empty strings, negative integers, overflow objects).
   - Alternating logic branches (`if-else` blocks, `switch` cases).
3. **Formulate Scenarios:** Plan test cases that trigger these untested branches.

## 2. Enforcing GWT (Given-When-Then) Standard
Every test case written must structure its assertions and flow under the GWT pattern:

* **Given (Dado):** The setup phase. Preconditions, mock configs, database states, variables, or input parameters.
* **When (Cuando):** The execution phase. The invocation of the specific unit, function, or endpoint under test.
* **Then (Entonces):** The assertion phase. Comparing the returned result, state change, or mock invocations against the expected outputs.

### Language-Agnostic GWT Comment Template

#### In JavaScript/TypeScript (using Vitest/Jest):
```typescript
test('should validate input correctly', () => {
  // GIVEN: A user object with an invalid email address
  const invalidUser = { name: 'John', email: 'invalid-email' };
  
  // WHEN: The validation function is executed
  const result = validateUser(invalidUser);
  
  // THEN: The result should return false and contain validation errors
  expect(result.isValid).toBe(false);
  expect(result.errors).toContain('email');
});
```

#### In Python (using pytest):
```python
def test_calculate_discount():
    # GIVEN: An active user and a cart worth $100
    user = User(status="active")
    cart_total = 100
    
    # WHEN: The discount is calculated
    discount = get_discount(user, cart_total)
    
    # THEN: The discount should be 10% ($10)
    assert discount == 10
```

#### In Go (native testing):
```go
func TestProcessPayment(t *testing.T) {
	// GIVEN: A payment processor with insufficient client balance
	processor := NewPaymentProcessor()
	payment := Payment{Amount: 500.0, Balance: 200.0}

	// WHEN: The payment process is executed
	err := processor.Process(payment)

	// THEN: An InsufficientBalance error should be returned
	if err == nil {
		t.Fatalf("expected error, got nil")
	}
	if err != ErrInsufficientBalance {
		t.Errorf("expected ErrInsufficientBalance, got %v", err)
	}
}
```

## 3. Coverage Targets
- Always target **80%+ statement coverage** and **100% path coverage** for critical business algorithms.
- Run the coverage command for the specific environment (e.g. `npm run test:coverage`, `pytest --cov`, `go test -cover`) to verify the coverage increases after adding the test cases.
