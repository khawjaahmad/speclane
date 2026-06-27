# Pre-PR checklist

Copy into the PR description (the template does this for you) and confirm before requesting review.

## Process
- [ ] This PR links to its change folder under `changes/`.
- [ ] The correct track was used (`feature` / `change` / `quickfix`).
- [ ] Required artifacts are present (`./scripts/speclane validate <slug>` passes).

## Correctness
- [ ] Acceptance criteria are met and demonstrated.
- [ ] AI-generated code was reviewed line by line by a human.
- [ ] Tests cover the changed behavior; a fixed bug added a regression test.

## Contracts & risk
- [ ] Any contract change (API/schema/event/auth/migration) is recorded in `design.md`.
- [ ] Approval-domain changes (auth, payments, data, infra, migrations) have explicit human review.
- [ ] Rollback is described where a production change warrants it.

## Hygiene
- [ ] No secrets in code, specs, commits, or logs.
- [ ] Scope stayed within the proposal; extra scope was split out.
- [ ] Evidence captured per `docs/evidence.md`.
