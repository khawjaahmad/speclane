# AGENTS.md

This repository uses **SpecLane**, a spec-driven development framework. Any AI coding agent
working here must follow this loop. This file is tool-neutral; most agents (Codex, Gemini CLI,
Amp, OpenCode, and others that read `AGENTS.md`) pick it up automatically.

## The loop
`specify → plan → tasks → implement → verify → archive`

Work happens inside a change folder under `changes/`, scaffolded with
`./scripts/speclane new <track> <slug>` and built from `templates/`.

## Choosing a track (see docs/tracks.md)
- `feature` — new app/service/capability (greenfield): full proposal → spec → design → tasks.
- `change` — modify an existing system (brownfield, default): spec delta + design + tasks.
- `quickfix` — trivial, low-risk: task + PR + check + review (no proposal/design/spec delta).

Anything touching auth, payments, data, infra, or migrations is never a `quickfix`.

## Rules that always apply (sdd/constitution.md)
1. Capture intent before non-trivial code.
2. The spec is the source of truth; behavior and spec change together.
3. You may draft anything; a human owns every merge, contract change, and production promotion.
4. Contract changes (API, schema, event, auth, migration) are explicit and recorded in `design.md`.
5. Evidence is a byproduct: link spec → PR → tests → review → release/rollback.
6. No secrets in specs, code, commits, prompts, or logs.
7. Approval domains require explicit human review.
8. Tests ship with the change; a bug fix adds its regression test.

## Before opening a PR
Run the checks in `guardrails/checklist.md` and ensure the PR links back to its change folder.

## Reference
Methodology in `sdd/`, templates in `templates/`, your agent's adapter in `adapters/`, provider
config in `config/`.
