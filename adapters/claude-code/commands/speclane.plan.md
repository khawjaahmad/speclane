---
description: Draft the design (contracts, migration, rollback) for a SpecLane change. Args: <slug>
---

You are running the **Plan** stage of SpecLane for change `$ARGUMENTS`.

1. Read the change's `proposal.md` and `spec.md`, plus `sdd/constitution.md`.
2. For `quickfix`, state that design is not required and stop.
3. Fill `design.md` from `templates/design.md`: approach, **contracts touched** (with before → after and backward-compat), data & migration, sequencing, rollback, alternatives.
4. Explicitly flag any approval-domain impact (auth, payments, data, infra, migration) and that it needs human review.
5. Do not implement. End with the contract decisions a human must confirm before Tasks.
