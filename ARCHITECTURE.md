# Architecture

SpecLane is organized around one rule: **each directory owns exactly one concern, and concerns
do not leak into each other.** This is what lets you swap an agent or a model provider without
touching your specs, and add governance without rewriting the methodology.

## Concerns and their boundaries

| Concern | Lives in | Depends on | Must NOT contain |
|---------|----------|------------|------------------|
| Methodology | `sdd/` | nothing | vendor names, agent syntax, provider URLs |
| Artifacts (shape of intent) | `templates/` | methodology | project-specific content |
| Work in flight | `changes/` | templates | provider/agent config |
| System of record | `specs/` | — | proposals, history, in-flight state |
| Agent integration | `adapters/` | methodology + templates | redefinitions of the methodology |
| Model/provider config | `config/` | nothing | specs, secrets (those go in `.env`) |
| Enforcement | `guardrails/` | methodology | new policy not derived from the constitution |
| Tooling | `scripts/` | templates + changes layout | business logic about specific projects |

## Why these boundaries

**Methodology is vendor-neutral.** `sdd/` never names Claude, GPT, GLM, or a base URL. That is
the only reason the same process survives a change of agent or provider. If a vendor name appears
in `sdd/`, that is a layering bug.

**Adapters translate, they do not redefine.** Every adapter exposes the same six stages backed
by the same templates and constitution. An adapter is allowed to differ only in *syntax* and
*file location*. This keeps N agents consistent instead of drifting into N dialects.

**Config is isolated and secret-free.** `config/` documents endpoints and model roles; real keys
live only in `.env` (gitignored). Swapping Anthropic → OpenAI-compatible → z.ai is a config edit
with zero spec impact.

**Specs vs. changes is a git-like split.** `changes/` are feature branches for intent; `specs/`
is main. Deltas merge in at archive. This is what makes the model work on brownfield systems
without restating the whole system each time.

**Guardrails derive from the constitution.** Enforcement never invents new policy; it makes
existing principles checkable. A guardrail with no constitutional basis is scope creep.

## Dependency direction

```
sdd/  ◀── templates/  ◀── adapters/
  ▲           ▲              ▲
  │           │              │
guardrails/   scripts/ ──▶ changes/ ──(archive)─▶ specs/

config/  (stands alone; referenced by adapters at runtime, not by methodology)
```

Arrows point toward what a thing depends on. Note that `config/` has no inbound arrow from
`sdd/` — that absence is the whole design.

## Extending SpecLane

- **New agent?** Add a folder under `adapters/`. Map the six stages; reuse templates and the
  constitution verbatim. Do not restate methodology.
- **New provider?** Add an entry to `config/providers.example.yaml` and `.env.example`. Touch
  nothing else.
- **New rule?** Add it to the constitution if it is a principle, then make it checkable in
  `guardrails/`. Prefer a CI check over a prose reminder.
