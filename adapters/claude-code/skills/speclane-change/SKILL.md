---
name: speclane-change
description: Use when starting or progressing any non-trivial code change in a SpecLane repository. Routes the work into the correct track and the specify→plan→tasks→implement→verify→archive loop, using the repo's templates, constitution, and guardrails. Trigger when the user asks to add a feature, change behavior, fix a non-trivial bug, or touch an approval domain (auth, payments, data, infra, migrations).
---

# SpecLane change skill

When this skill applies, follow the SpecLane loop instead of jumping straight to code.

## Steps
1. **Classify the track** using `docs/tracks.md`. Approval-domain or contract-touching work is
   never a `quickfix`.
2. **Ensure a change folder** exists under `changes/` (scaffold via `./scripts/speclane new`).
3. **Run the stages in order**, producing the artifacts the track requires from `templates/`:
   - specify → `proposal.md` (+ `spec.md` delta)
   - plan → `design.md`
   - tasks → `tasks.md`
   - implement → code + tests
   - verify → `evidence-bundle.md`
   - archive → merge delta into `specs/`
4. **Obey the constitution** (`sdd/constitution.md`) at every step: humans own merges and
   contract changes; no secrets; tests ship with behavior.

## Guardrails
Before opening a PR, run the checks in `guardrails/checklist.md`. Surface, don't bury,
approval-domain impact and any required contract change.
