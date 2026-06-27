# Cursor adapter

Cursor reads project rules from `.cursor/rules/`. This adapter ships a single always-on rule that
points Cursor at the SpecLane loop.

## Install

```bash
mkdir -p .cursor/rules
cp adapters/cursor/rules/speclane.mdc .cursor/rules/speclane.mdc
```

## Provider

In Cursor, add a custom OpenAI-compatible provider (Settings → Models → Add custom provider).
For a z.ai GLM Coding Plan, set the base URL to `https://api.z.ai/api/coding/paas/v4`, paste your
Coding Plan key, and add the model `glm-5.2`. See `docs/providers.md`.

## Usage

Use Cursor's chat/agent normally; the rule keeps it inside the SpecLane loop. Reference a stage
explicitly, e.g. "run the specify stage for add-dark-mode".
