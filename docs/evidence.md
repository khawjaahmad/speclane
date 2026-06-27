# Evidence

Evidence is the linked record that lets anyone answer, later: *what changed, why, who approved
it, how it was tested, and how to roll it back.* It should fall out of doing the work properly.

## What to capture, by risk

| Risk | Minimum evidence |
|------|------------------|
| Low (`quickfix`) | PR + a check (screenshot or test) + reviewer approval |
| Medium (`change`) | Above + unit/integration tests for changed behavior + acceptance-criteria check |
| High (approval domain) | Above + negative/permission tests + QA signoff + release & rollback notes |

## The evidence bundle

A bundle links: the change folder (proposal/spec/design/tasks), the PR(s), test results, the
review/approval, and — where relevant — release notes and a rollback plan. Use
[../templates/evidence-bundle.md](../templates/evidence-bundle.md).

## Principles

- **Link, don't restate.** Point to the PR and test run; don't paraphrase them.
- **Size to risk.** Don't demand a rollback plan for a copy fix; don't ship an auth change
  without one.
- **Defects become tests.** A fixed bug should add the regression test that proves it.
- **Audit-ready as a side effect.** This trail is what satisfies change-management and security
  reviews — produced once, reused for both delivery and audit.
