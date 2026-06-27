# OpenAI Codex CLI adapter (and any OpenAI-compatible agent)

Codex CLI reads `AGENTS.md` for repo instructions and supports reusable prompt files. This
adapter is also the reference for **any** OpenAI-compatible agent (Cline, Continue, Aider-style
tools) — the prompts are plain Markdown.

## Install

The root [`AGENTS.md`](../../AGENTS.md) already describes the SpecLane loop tool-neutrally; Codex
picks it up automatically. For the stage prompts, copy them where your Codex setup expects custom
prompts (commonly `.codex/prompts/`):

```bash
mkdir -p .codex/prompts
cp adapters/codex/prompts/*.md .codex/prompts/
```

Then invoke a stage by referencing the prompt, e.g. `specify add-dark-mode`.

## Provider

Codex talks to any OpenAI-compatible endpoint. Set `OPENAI_BASE_URL` + `OPENAI_API_KEY` (see
`config/.env.example`). For a z.ai GLM Coding Plan, use the **coding** endpoint
`https://api.z.ai/api/coding/paas/v4` so requests draw on Coding Plan quota, and set the model to
`glm-5.2` (or your plan's model). Details in `docs/providers.md`.
