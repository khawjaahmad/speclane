<div align="center">

# SpecLane

**A modular, spec-driven development (SDD) framework for AI coding agents.**

Plan before you build · let the agent implement against the spec · leave behind evidence.

[![CI](https://github.com/khawjaahmad/speclane/actions/workflows/validate.yml/badge.svg)](https://github.com/khawjaahmad/speclane/actions/workflows/validate.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

</div>

---

SpecLane is a methodology **and** a thin tooling harness that gives any AI coding agent a
repeatable lane from intent to shipped code. It is deliberately *not* minimal and *not* heavy:
enough structure to keep AI-assisted work governed and auditable, without the ceremony that
makes teams abandon the process.

It is built on the established SDD ecosystem (OpenSpec, GitHub Spec Kit, Claude Code Skills,
BMAD-style roles) and distilled into one coherent, provider-agnostic, agent-agnostic shape.

## Philosophy

```
→ spec first, code second
→ fluid not rigid (sized to risk, not one ceremony for everything)
→ agent-agnostic, provider-agnostic
→ evidence is a byproduct, not a chore
→ humans own decisions, agents do the volume work
→ modular: separation of concerns end to end
```

## The loop

```
  specify ──▶ plan ──▶ tasks ──▶ implement ──▶ verify ──▶ archive
     ▲                                                        │
     └──────────────── living specs (system of record) ◀──────┘
```

Every change is a folder under `changes/`. When it ships, its spec deltas merge into
`specs/` — the living description of the system as it actually is.

## Three tracks (match effort to risk)

| Track | When | Weight |
|-------|------|--------|
| **`feature`** | New product/app/service from zero (greenfield) | Full: proposal → spec → design → tasks |
| **`change`**  | Modify an existing system (brownfield) — the default | Spec delta + design + tasks |
| **`quickfix`** | Trivial, low-risk edit (copy, isolated bug) | Minimal: task + PR + check |

See [docs/tracks.md](docs/tracks.md).

## Repository layout (separation of concerns)

```
sdd/         the methodology core — constitution, lifecycle, roles, glossary
templates/   artifact templates — proposal, spec, design, tasks, ADR, evidence
changes/     in-flight change folders (+ archive/)
specs/       living specifications — the system of record
adapters/    per-agent integration — claude-code, codex, cursor, copilot, gemini-cli, opencode
config/      model + provider configuration — anthropic, openai-compatible, z.ai
guardrails/  enforceable rules and review checklists
scripts/     the SpecLane CLI (scaffold, validate, list, archive)
docs/        guides and reference
.github/     CI validation + PR template
```

Each directory owns exactly one concern. Methodology never hard-codes a vendor; adapters never
redefine the methodology; config never leaks into specs.

## Quickstart

```bash
git clone https://github.com/khawjaahmad/speclane.git
cd speclane
./scripts/speclane new change add-dark-mode    # scaffold a change folder from templates
# ... fill in proposal/spec/design/tasks, then drive it with your agent ...
./scripts/speclane validate add-dark-mode
./scripts/speclane archive add-dark-mode
```

Then point your agent at the change. Adapter setup per tool lives in [adapters/](adapters/)
and the supported-agent matrix is in [docs/agents.md](docs/agents.md).

## Supported agents

Claude Code · OpenAI Codex CLI (and any OpenAI-compatible agent) · Cursor · GitHub Copilot ·
Gemini CLI · OpenCode. The methodology is plain Markdown, so it works with essentially any
agent that can read repo files and run slash-style prompts.

## Supported providers

Anthropic · any OpenAI-compatible endpoint (OpenAI, OpenRouter, local servers) · z.ai GLM
Coding Plan (Anthropic- and OpenAI-compatible paths). See [config/](config/) and
[docs/providers.md](docs/providers.md).

## Documentation

Start with [docs/getting-started.md](docs/getting-started.md), then [docs/concepts.md](docs/concepts.md)
and [docs/workflow.md](docs/workflow.md). Architecture and design rationale is in
[ARCHITECTURE.md](ARCHITECTURE.md).

## License

MIT — see [LICENSE](LICENSE).
