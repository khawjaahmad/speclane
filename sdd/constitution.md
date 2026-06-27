# SpecLane Constitution

The constitution holds the principles and guardrails that apply to **every** change, on every
track, with every agent. Specs describe *what* a particular change does; the constitution
describes the standards that change must respect regardless. Agents read this first.

Keep it short and enforceable. If a rule cannot be checked or reviewed against, it is a
preference, not a rule — put it in a guide instead.

## 1. Intent before implementation

No non-trivial code is written before its intent is captured in a spec artifact. "Non-trivial"
is defined by the track (see [lifecycle.md](lifecycle.md)). The spec, not the chat history, is
the durable record of intent.

## 2. The spec is the source of truth

When code and spec disagree, that is a defect. Behavior changes and spec changes travel in the
same change folder and the same PR. Living specs under `specs/` describe the system as it is.

## 3. Humans own decisions; agents do volume

Agents may draft specs, designs, code, tests, and docs. A human owns every merge, every
contract change, and every production promotion. "The agent generated it" is never a
justification on its own.

## 4. Match weight to risk

Ceremony scales with blast radius. A copy fix does not get a design doc; an auth or payment
change does not skip one. Tracks encode this. Over-processing trivial work is as much a failure
as under-processing risky work.

## 5. Contracts are explicit

API shapes, schemas, event payloads, auth behavior, and migrations are contracts. Changing one
is always an explicit, reviewed decision recorded in the design artifact — never an accidental
side effect of code generation.

## 6. Evidence is a byproduct

Every change leaves a linked trail: spec → PR → tests → review → (where relevant) release and
rollback notes. Evidence is produced by doing the work properly, not bolted on afterward.

## 7. Secrets stay out

No credentials in specs, commits, tickets, prompts, or logs. Provider keys live only in the
environment. Agents are never handed long-lived secrets.

## 8. Approval domains require a human gate

These areas always require explicit human review, regardless of track: authentication,
authorization, payments, personal/sensitive data, data retention, database migrations with
production risk, infrastructure, and production deployment policy.

---

Amendments to this constitution are themselves a `change` and follow the normal loop.
