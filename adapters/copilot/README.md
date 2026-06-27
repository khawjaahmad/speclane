# GitHub Copilot adapter

Copilot (in VS Code and on github.com) reads `.github/copilot-instructions.md` for repo-wide
guidance, and supports reusable prompt files (`.github/prompts/*.prompt.md`).

## Install

```bash
mkdir -p .github/prompts
cp adapters/copilot/copilot-instructions.md .github/copilot-instructions.md
cp adapters/copilot/prompts/*.prompt.md     .github/prompts/
```

## Usage

Copilot Chat will follow the instructions repo-wide. Invoke a stage with a prompt file, e.g.
`/speclane-specify`. Provider/model selection is managed by your Copilot subscription or, for
OpenAI-compatible routing, your editor's model settings.
