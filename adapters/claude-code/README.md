# Claude Code adapter

Gives Claude Code native SpecLane commands and a skill, backed by the shared methodology.

## Install

Copy (or symlink) this adapter's `commands/` and `skills/` into your project's `.claude/`
directory, and place `CLAUDE.md` at the repo root (or merge it into your existing one):

```bash
mkdir -p .claude
cp -r adapters/claude-code/commands .claude/commands
cp -r adapters/claude-code/skills    .claude/skills
cp adapters/claude-code/CLAUDE.md    ./CLAUDE.md      # or merge
```

## Commands

Invoke in Claude Code as slash commands:

```
/speclane.specify <slug>     draft proposal + spec delta
/speclane.plan <slug>        draft design (contracts, migration, rollback)
/speclane.tasks <slug>       decompose into verifiable tasks
/speclane.implement <slug>   implement tasks; tests ship with code
/speclane.verify <slug>      prove acceptance criteria; capture evidence
/speclane.archive <slug>     merge spec delta into specs/; move to archive
```

## Provider

Claude Code uses Anthropic by default. To run against a z.ai GLM Coding Plan instead, set the
Anthropic-compatible base URL in your environment — see `config/.env.example` and
`docs/providers.md`. The commands are identical regardless of provider.
