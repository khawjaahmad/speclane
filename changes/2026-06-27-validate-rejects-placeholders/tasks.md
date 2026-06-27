# Tasks: validate rejects unfilled template placeholders

- [x] **1. Add placeholder detector** — changes: scripts/lib/validate.sh — verified by: unfilled scaffold fails
- [x] **2. Wire detector into required artifacts per track** — changes: scripts/lib/validate.sh — verified by: quickfix checks only its artifacts
- [x] **3. Keep example passing** — changes: none — verified by: example validates green

## Test plan
Run validate against the worked example (expect pass), a fresh scaffold (expect fail with
TODO lines), and this change folder once filled (expect pass).

## Definition of done
- [x] All tasks complete and individually verified
- [x] Tests cover changed behavior
- [x] AI-generated code reviewed by a human
- [x] PR links to this change folder
- [x] Evidence captured per docs/evidence.md
