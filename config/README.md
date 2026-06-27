# Configuration

Provider and model selection is isolated here so the agent and the methodology stay
vendor-neutral. Nothing in `sdd/`, `templates/`, or `changes/` references a provider.

## Files

- `.env.example` — copy to `.env` (gitignored) and fill in keys/base URLs.
- `providers.example.yaml` — copy to `providers.yaml` (gitignored) to declare provider endpoints.
- `models.yaml` — logical model roles (planner / implementer / reviewer) mapped to provider models.

## How it fits together

Agents authenticate via environment variables (`.env`). `providers.yaml` documents the base URLs
and protocol family per provider for humans and scripts. `models.yaml` lets you assign a
capable model to planning/review and a cheaper one to routine implementation without editing any
spec or adapter.

Endpoints and model names change — verify against each provider's current docs
(`docs.anthropic.com`, your OpenAI-compatible provider, `docs.z.ai`).
