---
description: Archive a verified SpecLane change; merge spec delta into specs/. Args: <slug>
---

You are running the **Archive** stage of SpecLane for change `$ARGUMENTS`.

1. Confirm `evidence-bundle.md` shows all acceptance criteria met. If not, stop.
2. Merge the change's `spec.md` delta into the matching capability under `specs/` (ADDED/MODIFIED/REMOVED applied to the living spec). Create the capability file if it does not exist.
3. Capture any reusable lesson: a new test, a guardrail in `guardrails/`, or a convention note.
4. Move the change folder to `changes/archive/`. Suggest the `./scripts/speclane archive $ARGUMENTS` command to do the move.
