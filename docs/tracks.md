# Tracks

A track sets how much of the loop applies. Choose by one question: **what is the blast radius?**

## `feature` — greenfield
A new app, service, or self-contained capability that does not exist yet. Architecture and
contracts must be defined from scratch.

Artifacts: `proposal.md` → `spec.md` → `design.md` → `tasks.md`. Full verification. Name an
owner and, for throwaway tools, an expected lifetime and shutdown plan.

## `change` — brownfield (default)
A modification to an existing system. Most work lives here.

Artifacts: spec **delta** in `spec.md` + `design.md` + `tasks.md`. Respect current behavior,
contracts, and data. Verification covers the changed paths and their regressions.

## `quickfix` — trivial, low-risk
An isolated, obvious change with no contract, compliance, payment, or consent implications
(e.g. fixing a misleading label).

Artifacts: a task note + PR + a check (screenshot or test) + review. No proposal, design, or
spec delta — unless the wording or behavior turns out to carry meaning, in which case promote
to `change`.

## Decision table

| Situation | Track |
|-----------|-------|
| New app / service / capability | `feature` |
| Modify existing product | `change` |
| Touches auth, payments, data, infra, migration | `change` (full, + approval-domain review) |
| Multi-component / multi-repo | `change` (full) |
| Isolated copy or UI fix, no meaning change | `quickfix` |
| Throwaway prototype, no real data | `feature` (light) — still name owner + lifetime |

When in doubt, go one level heavier. Promoting a `quickfix` to a `change` mid-flight is cheap;
discovering you under-processed an auth change in production is not.
