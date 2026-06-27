---
description: Implement a SpecLane change task by task, tests with code. Args: <slug>
---

You are running the **Implement** stage of SpecLane for change `$ARGUMENTS`.

1. Read `tasks.md`, `design.md`, and `sdd/constitution.md`.
2. Implement one task at a time. For each: write the code, write/extend tests for the changed behavior, and check the task's verification box only when its test passes.
3. Respect contracts exactly as recorded in `design.md`. If implementation reveals a needed contract change, stop and surface it for human decision — do not change a contract silently.
4. Do not exceed the scope in `proposal.md`.
5. Summarize what changed and what the human should review (especially permission/state/migration logic).
