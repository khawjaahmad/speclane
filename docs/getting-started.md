# Getting started

SpecLane drops into any repository. It adds a process and a thin CLI; it does not lock you into a
vendor, an agent, or a language.

## 1. Add SpecLane to a project

Clone it standalone, or copy these directories into an existing repo: `sdd/`, `templates/`,
`changes/`, `specs/`, `adapters/` (only the agents you use), `config/`, `guardrails/`,
`scripts/`.

```bash
git clone https://github.com/khawjaahmad/speclane.git
cd speclane
```

## 2. Configure a provider

Copy the env example and point it at your model backend (Anthropic, any OpenAI-compatible
endpoint, or a z.ai GLM Coding Plan):

```bash
cp config/.env.example .env
# edit .env
```

See [providers.md](providers.md) for exact base URLs and variable names.

## 3. Wire up your agent

Pick your agent's folder under [adapters/](../adapters/) and follow its README. Each adapter
exposes the same six commands: `specify`, `plan`, `tasks`, `implement`, `verify`, `archive`.

## 4. Run the loop

```bash
./scripts/speclane new change add-dark-mode
```

This scaffolds `changes/<date>-add-dark-mode/` from the templates. Fill in the proposal, drive
the stages with your agent, then:

```bash
./scripts/speclane validate add-dark-mode
./scripts/speclane archive add-dark-mode
```

## 5. Read these next

- [concepts.md](concepts.md) — the mental model
- [workflow.md](workflow.md) — the loop, stage by stage
- [tracks.md](tracks.md) — choosing how much process to apply
