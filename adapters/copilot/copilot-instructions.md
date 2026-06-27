# SpecLane instructions for Copilot

This repository uses SpecLane (spec-driven development). For any non-trivial change, follow the
loop `specify → plan → tasks → implement → verify → archive` inside a change folder under
`changes/`, using `templates/`.

Pick a track from `docs/tracks.md` (`feature`, `change`, `quickfix`). Anything touching auth,
payments, data, infra, or migrations is never a `quickfix` and needs human review.

Always-on rules (`sdd/constitution.md`): capture intent before code; the spec is the source of
truth; a human owns every merge and contract change; contract changes are recorded in
`design.md`; no secrets in code/specs/logs; tests ship with behavior. Keep changes within the
proposal's scope and link PRs to the change folder.
