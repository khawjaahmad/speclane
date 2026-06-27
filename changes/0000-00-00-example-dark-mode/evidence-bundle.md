# Evidence bundle: example-dark-mode

| Field | Value |
|-------|-------|
| Change folder | `changes/0000-00-00-example-dark-mode/` |
| Track | change |
| Owner | example |
| Approval domains | none |
| PR(s) | #0 (example) |
| Status | archived (illustrative) |

## Acceptance criteria coverage
- [x] Toggle switches theme — proof: component test `Header.theme.spec`
- [x] Persists after reload — proof: unit test `theme.persist.spec`
- [x] First-load OS default — proof: unit test `theme.resolve.spec`
- [x] No contrast regressions — proof: manual QA screenshot set

## Tests
All theme unit + component tests pass. (Illustrative — this is an example change.)

## Review
Reviewed and approved; low-risk additive frontend change.

## Release & rollback
Released with the standard frontend deploy. Rollback: remove provider/toggle; stored key ignored.

## Known limitations / follow-ups
Per-component theming deferred (out of scope).
