# Workflow

The loop is `specify → plan → tasks → implement → verify → archive`. Here is each stage in
practice.

## Specify
Capture intent: who needs this, what problem it solves, what's in and out of scope, and
observable acceptance criteria. Output: `proposal.md` (and, for `change`/`feature`, the spec
delta in `spec.md`). The agent can draft; the Author owns scope and criteria.

## Plan
Make technical decisions visible *before* code exists: affected systems, contract changes, data
model, sequencing, rollback. Output: `design.md`. Required for `feature` and `change`; skipped
(recorded) for `quickfix`. The Steward owns contract and risk calls.

## Tasks
Decompose into small units that can each be verified. Each task names what it changes and how
it's checked. Output: `tasks.md`. Keep tasks boundary-aware so they can be implemented and
reviewed independently.

## Implement
The agent drafts code, tests, and migrations against the tasks; the Implementer reviews every
line and owns the merge. Tests ship with the change. The PR links back to the change folder.

## Verify
Prove acceptance criteria are met. Cover negative and permission paths. Capture evidence sized
to the risk — a unit-test summary for small changes, browser/QA evidence and a signoff for
risky ones. See [evidence.md](evidence.md).

## Archive
Merge the change's spec deltas into `specs/`, move the folder to `changes/archive/`, and capture
any reusable lesson (a new test, a guardrail, a convention). The living spec now reflects
reality.

## Driving it with an agent

Each adapter maps these stages to commands. A typical Claude Code session:

```
/speclane.specify add-dark-mode
/speclane.plan add-dark-mode
/speclane.tasks add-dark-mode
/speclane.implement add-dark-mode
/speclane.verify add-dark-mode
/speclane.archive add-dark-mode
```

The command names are identical across agents; only the invocation syntax differs.
