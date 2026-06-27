# Gemini CLI adapter

Gemini CLI reads `GEMINI.md` for project context and supports custom commands.

## Install

```bash
cp adapters/gemini-cli/GEMINI.md ./GEMINI.md   # or merge into an existing one
```

## Provider

Gemini CLI uses Gemini models by default. For OpenAI-compatible routing (including a z.ai coding
endpoint), configure the base URL and key via the CLI's model settings and `config/.env.example`.
The SpecLane loop is identical regardless of model.
