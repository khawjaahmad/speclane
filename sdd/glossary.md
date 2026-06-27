# Glossary

**Acceptance criteria** — observable conditions that prove a change is done right. Behavior, not
implementation preference.

**Adapter** — the per-agent integration layer that exposes the SpecLane loop as that agent's
native commands/skills/rules. Lives in `adapters/`.

**Approval domain** — a high-risk area (auth, payments, data, infra, migrations) that always
requires explicit human review.

**Artifact** — a spec document produced by the loop: proposal, spec, design, tasks, evidence,
ADR.

**Blast radius** — everything a change could affect. Drives how much verification is required.

**Change folder** — a directory under `changes/` holding one unit of work and its artifacts.

**Constitution** — the standards that apply to every change regardless of track. See
`sdd/constitution.md`.

**Contract** — an interface other code depends on: API shape, schema, event payload, auth
behavior, migration.

**Evidence bundle** — the linked record for a change: spec, PR, tests, review, release/rollback.

**Guardrail** — an enforceable rule, ideally checked automatically.

**Living spec** — a spec under `specs/` describing the system as it currently is; updated at
archive time.

**Provider** — the model backend a change runs against. Independent of the agent; concrete
providers and endpoints are configured in `config/` and listed in `docs/providers.md`.

**Spec delta** — the part of a change that adds/modifies/removes behavior in a living spec.

**Track** — the risk tier of a change (`feature`, `change`, `quickfix`) that sets how much of the
loop applies.
