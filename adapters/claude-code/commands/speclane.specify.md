---
description: Draft the proposal and spec delta for a SpecLane change. Args: <slug>
---

You are running the **Specify** stage of SpecLane for change `$ARGUMENTS`.

1. Read `sdd/constitution.md`, `sdd/lifecycle.md`, and `docs/tracks.md`.
2. If `changes/*-$ARGUMENTS/` does not exist, tell the user to run `./scripts/speclane new <track> $ARGUMENTS` first, then stop.
3. Determine the track and fill `proposal.md` from `templates/proposal.md`: problem, outcome, in/out of scope, **observable** acceptance criteria, affected systems, risks.
4. For `feature`/`change`, draft the spec delta in `spec.md` from `templates/spec.md` using requirement + GIVEN/WHEN/THEN scenarios. For `quickfix`, skip the spec and note why in the proposal.
5. Do not write implementation code in this stage. End by listing open questions for the Author to resolve.
