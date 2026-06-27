# CLAUDE.md — SpecLane project

This repository uses **SpecLane**, a spec-driven development framework. Read and follow it.

## Before writing non-trivial code
1. Read `sdd/constitution.md` (always applies) and `sdd/lifecycle.md`.
2. Determine the track from `docs/tracks.md`: `feature`, `change`, or `quickfix`.
3. Work inside a change folder under `changes/`. Use `templates/` for every artifact.

## The loop
`specify → plan → tasks → implement → verify → archive`. Do not skip a stage silently; a skipped
stage is recorded in the proposal.

## Hard rules (from the constitution)
- The spec is the source of truth; behavior and spec change together.
- You may draft anything; a human owns every merge, contract change, and production promotion.
- Contract changes (API, schema, event, auth, migration) are explicit and recorded in `design.md`.
- Never put secrets in specs, code, commits, or logs.
- Approval domains (auth, payments, data, infra, migrations) require explicit human review.
- Tests ship with the change. A bug fix adds its regression test.

## Output discipline
Keep changes within the scope of the proposal. Do not expand scope because editing more is easy.
Link PRs back to the change folder.
