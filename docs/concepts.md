# Concepts

SpecLane rests on a few ideas. If these land, the rest is detail.

## The spec is the artifact

When an agent writes the code, the durable thing you author and review is the spec. Code becomes
a build output of intent + constraints. This is why specs live in the repo next to code, not in
a wiki: they must version and travel with the change.

## Two layers, linked

One layer records **intent and governance** (proposal, spec, design, constitution). One layer
**executes and proves** (code, tests, evidence). They must link to each other; neither swallows
the other. The change folder binds them.

## Living specs vs. change folders

- `changes/<slug>/` is a **feature branch for intent** — a single unit of work, in flight.
- `specs/` is **main** — the system as it actually is. Deltas merge in at archive time.

This git-like split is what makes the approach work on brownfield systems: you describe what's
changing, not the whole system, every time.

## Agent-agnostic by construction

The methodology is plain Markdown. Adapters translate it into each agent's native surface
(slash commands, skills, rules files), but the source of truth is identical across agents. Swap
Claude Code for Codex or Cursor without rewriting your process.

## Provider-agnostic by construction

The agent and the model backend are separate concerns. `config/` selects the provider
(Anthropic, OpenAI-compatible, z.ai). The same change folder runs against any of them.

## Separation of concerns

Methodology (`sdd/`), artifacts (`templates/`), agent integration (`adapters/`), provider
config (`config/`), enforcement (`guardrails/`), and tooling (`scripts/`) are independent. You
can change your model provider without touching a spec, or add an agent without touching the
methodology. See [../ARCHITECTURE.md](../ARCHITECTURE.md).
