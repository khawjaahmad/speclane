# Contributing to SpecLane

SpecLane is dogfooded with its own process. Contributions follow the same loop they describe.

## How to propose a change

1. Pick a track (`feature`, `change`, or `quickfix`) — see [docs/tracks.md](docs/tracks.md).
2. Scaffold a change folder: `./scripts/speclane new change <slug>`.
3. Fill in the artifacts the track requires (proposal/spec/design/tasks).
4. Implement with the agent of your choice (see [adapters/](adapters/)).
5. Run `./scripts/speclane validate change <slug>` and open a PR linking the change folder.

## Ground rules

- **Small, reviewable PRs.** One change folder per PR where possible.
- **Specs are the source of truth.** If behavior changes, the spec changes in the same PR.
- **No secrets in the repo.** Provider keys live in `.env` (gitignored), never in specs or commits.
- **Disclose AI assistance.** If a PR contains AI-generated code, note the agent and model used.
- **Tests ship with behavior.** A bug fix should add the regression test that proves it.

## Commit style

Conventional commits, one line: `type(scope): subject` (e.g. `feat(adapters): add gemini-cli adapter`).
