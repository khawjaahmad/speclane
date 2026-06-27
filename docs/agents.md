# Supported agents

The methodology is plain Markdown, so it works with essentially any agent that can read repo
files. The adapters in [../adapters/](../adapters/) give first-class, native integration for the
following.

| Agent | Native surface | Adapter | Provider notes |
|-------|----------------|---------|----------------|
| Claude Code | Slash commands + Skills + `CLAUDE.md` | `adapters/claude-code/` | Anthropic, or z.ai Anthropic-compatible |
| OpenAI Codex CLI | Prompt files + `AGENTS.md` | `adapters/codex/` | OpenAI-compatible (incl. z.ai coding endpoint) |
| Cursor | Project rules (`.cursor/rules`) | `adapters/cursor/` | OpenAI-compatible custom provider |
| GitHub Copilot | `.github/copilot-instructions.md` + prompts | `adapters/copilot/` | Copilot models / OpenAI-compatible |
| Gemini CLI | `GEMINI.md` + commands | `adapters/gemini-cli/` | Gemini / OpenAI-compatible |
| OpenCode | Rules + commands | `adapters/opencode/` | OpenAI-compatible / z.ai |

## How adapters stay consistent

Every adapter exposes the same six commands — `specify`, `plan`, `tasks`, `implement`, `verify`,
`archive` — backed by the same templates and constitution. The only differences are syntax and
file location. This is the separation-of-concerns guarantee: the methodology has one definition;
adapters are thin translations.

## Any other agent

Point it at the root [`AGENTS.md`](../AGENTS.md). It describes the loop, the artifacts, and the
rules in a tool-neutral way that most agents can follow directly.
