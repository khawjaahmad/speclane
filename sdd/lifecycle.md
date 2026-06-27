# Lifecycle

SpecLane has one loop. Tracks decide how much of each stage applies, but the order never
changes and the stages never get skipped silently — a skipped stage is a recorded decision.

## Stages

| Stage | Purpose | Primary artifact |
|-------|---------|------------------|
| **Specify** | Capture intent, scope, and acceptance criteria | `proposal.md`, `spec.md` |
| **Plan** | Make technical decisions visible before coding | `design.md` |
| **Tasks** | Decompose into small, verifiable units | `tasks.md` |
| **Implement** | Build it (agent drafts, human owns) | code + tests + PR |
| **Verify** | Prove behavior against acceptance criteria | test + QA evidence |
| **Archive** | Merge spec deltas into living specs; capture lessons | updated `specs/`, notes |

## What "non-trivial" means

A change needs the full Specify→Plan stages when **any** of these are true:

- It touches an approval domain (see [constitution.md](constitution.md) §8).
- It changes a contract (API, schema, event, auth, migration).
- It spans more than one component or repository.
- It is user-facing in a way that affects meaning, consent, money, or compliance.
- A reviewer cannot predict the blast radius from the diff alone.

If none are true, the `quickfix` track applies: a task, a PR, a check, and a review.

## Stage gates

Each stage has a minimal entry condition. The CLI and CI check the mechanical ones; humans
check the rest.

- **Specify → Plan**: acceptance criteria exist and are observable.
- **Plan → Tasks**: affected systems and contract changes are named.
- **Tasks → Implement**: tasks are small enough to verify individually.
- **Implement → Verify**: code links to the change folder; tests exist for changed behavior.
- **Verify → Archive**: acceptance criteria are demonstrably met; evidence is linked.

## Definition of Ready / Done

**Ready** (before Implement): outcome clear, acceptance criteria observable, affected systems
named, track chosen, risks visible, owner named.

**Done** (before Archive): criteria met and verified, code follows conventions, AI output
reviewed, tests cover changed behavior, PR links to the change, evidence present at the level
the risk demands, follow-ups captured.
