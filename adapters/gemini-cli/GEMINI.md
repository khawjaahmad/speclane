# GEMINI.md — SpecLane project

This repository uses SpecLane (spec-driven development). For any non-trivial change, follow
`specify → plan → tasks → implement → verify → archive` inside a change folder under `changes/`,
using `templates/` and obeying `sdd/constitution.md`.

Track selection: `docs/tracks.md`. Approval domains (auth, payments, data, infra, migrations)
are never `quickfix` and require human review. The spec is the source of truth; a human owns
every merge and contract change; contract changes are recorded in `design.md`; no secrets in
code/specs/logs; tests ship with behavior. Keep within proposal scope; link PRs to the change
folder.
