# Providers

The model backend is a separate concern from the agent. SpecLane supports three families. Exact
config lives in [../config/](../config/); this page explains the choices. Endpoints can change —
verify against each provider's current docs.

## Anthropic (Claude)

Native Claude models. Set `ANTHROPIC_API_KEY`. Default base URL is Anthropic's own. Best for
Claude Code as a first-party experience.

## OpenAI-compatible endpoints

Any endpoint implementing the OpenAI Chat Completions contract: OpenAI itself, OpenRouter, local
servers (Ollama, vLLM, LM Studio), and most aggregators. Set `OPENAI_BASE_URL` and
`OPENAI_API_KEY`, then choose a model. This is the most portable path and works with Codex,
Cursor, OpenCode, Continue, Cline, and similar.

## z.ai GLM Coding Plan

Zhipu's GLM models via the Coding Plan. z.ai exposes **both** protocol families, so it works as a
drop-in for Claude Code *and* for OpenAI-compatible agents. As of mid-2026 (verify at docs.z.ai):

- Anthropic-compatible: `https://api.z.ai/api/anthropic` — set `ANTHROPIC_BASE_URL` +
  `ANTHROPIC_AUTH_TOKEN`. Use this for Claude Code / Goose-style harnesses.
- OpenAI-compatible (general): `https://api.z.ai/api/paas/v4` (or `.../api/openai/v1`).
- OpenAI-compatible (Coding Plan quota): `https://api.z.ai/api/coding/paas/v4` — required to
  spend Coding Plan quota from OpenAI-compatible tools (Cline, Cursor, OpenCode).

Models: `glm-5.2`, `glm-5.1`, `glm-4.7`, and others depending on plan. Long agent sessions need
a large client timeout (e.g. `API_TIMEOUT_MS=3000000` for Claude Code) because GLM first-token
latency on big-context calls is higher than Claude's.

## Choosing

- Want a true Claude Code drop-in at lower cost? z.ai Anthropic-compatible path.
- Want maximum tool portability? OpenAI-compatible path.
- Want first-party Claude behavior and features? Anthropic direct.

The change folder you author is identical in all three cases — only `config/` differs.
