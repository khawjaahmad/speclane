# Guardrails

Enforceable rules. A guardrail is a rule that can be **checked** — by CI, a script, or a
reviewer working from a checklist. Preferences that cannot be checked belong in the docs, not
here.

## Automated (CI — `.github/workflows/validate.yml`)

- **Change folders are well-formed.** Every active folder under `changes/` has the artifacts its
  track requires (`speclane validate`).
- **Acceptance criteria exist.** Each non-quickfix proposal has at least one observable criterion.
- **CLI is sound.** The Bash CLI passes `shellcheck`.

## Reviewer-enforced (see `checklist.md`)

- **PR links to its change folder.** No orphan PRs for non-trivial work.
- **Contracts are recorded.** Any API/schema/event/auth/migration change appears in `design.md`
  with before → after.
- **Approval domains reviewed.** Auth, payments, data, infra, and migration changes carry an
  explicit human approval.
- **Tests ship with behavior.** Changed behavior has tests; fixed bugs add a regression test.
- **No secrets.** Nothing sensitive in specs, code, commits, or logs.
- **Scope held.** The diff stays within the proposal; scope creep is split into a new change.

## Adding a guardrail

Prefer automation. If a recurring defect or review nit keeps appearing, convert it into a CI
check or a script rule and reference it here. Capturing it during *archive* is the intended path.
