# Roles

SpecLane describes accountability, not job titles. On a solo project one person wears all hats;
on a team these map to people. Agents can *assist* every role but *own* none.

## Author
Owns intent quality. Writes or approves the proposal and acceptance criteria. Decides scope and
what "done" means. Accepts the result against evidence, not vibes.

## Implementer
Owns implementation quality and what gets merged. Reviews agent output, preserves contracts,
writes tests with the change, produces a reviewable PR.

## Reviewer
Owns correctness, security, and scope discipline at the gate. Approves or blocks. Pays special
attention to approval-domain changes and contract stability.

## Verifier (QA)
Owns proof. Makes acceptance criteria testable, checks negative and permission paths, turns
recurring defects into durable tests.

## Operator (DevOps)
Owns the path to production: environments, secrets, release evidence, rollback readiness. Gets
involved early when a change touches infra, migrations, or deployment.

## Steward (Architect)
Owns cross-cutting design consistency, contract governance, and the rules in `guardrails/` and
the constitution. Reserves direct review for high-risk or structural decisions.

---

The point of naming roles is that **every change has an owner for each concern that applies**.
Unowned concerns are how risk leaks through an AI-accelerated pipeline.
