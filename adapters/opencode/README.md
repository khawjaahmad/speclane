# OpenCode adapter

OpenCode is an OpenAI-compatible terminal agent. It reads `AGENTS.md` (already at the repo root)
and supports custom rules/commands.

## Install

The root `AGENTS.md` covers OpenCode automatically. Optionally copy the rule for emphasis:

```bash
mkdir -p .opencode
cp adapters/opencode/rules.md .opencode/rules.md
```

## Provider

OpenCode works with any OpenAI-compatible endpoint. For a z.ai GLM Coding Plan use
`https://api.z.ai/api/coding/paas/v4` with model `glm-5.2`; OpenCode can also auto-detect z.ai
endpoints from your key. See `docs/providers.md`.
