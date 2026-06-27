---
description: Verify a SpecLane change against acceptance criteria and capture evidence. Args: <slug>
---

You are running the **Verify** stage of SpecLane for change `$ARGUMENTS`.

1. Read `proposal.md` acceptance criteria and `docs/evidence.md`.
2. Run/describe the checks that prove each criterion, including negative and permission paths where relevant.
3. Fill `evidence-bundle.md` from `templates/evidence-bundle.md`: criteria coverage with links, tests, review, and (for approval-domain changes) release & rollback notes.
4. Report any unmet criterion as a blocker; do not mark the change done while criteria are open.
