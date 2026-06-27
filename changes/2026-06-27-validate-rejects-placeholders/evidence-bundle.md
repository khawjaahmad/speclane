# Evidence bundle: validate-rejects-placeholders

| Field | Value |
|-------|-------|
| Change folder | changes/2026-06-27-validate-rejects-placeholders/ |
| Track | change |
| Owner | maintainers |
| Approval domains | none |
| PR(s) | pending |
| Status | ready |

## Acceptance criteria coverage
- [x] Unfilled scaffold fails — proof: local run exits non-zero with TODO lines
- [x] Failure names artifact and tokens — proof: TODO output lists tokens per artifact
- [x] Example still passes — proof: validate example-dark-mode exits zero
- [x] Quickfix checks only its artifacts — proof: spec and design skipped for quickfix track

## Tests
Validated locally against the example (pass), a fresh scaffold (fail), and this folder (pass).

## Review
Pending human review.

## Release and rollback
Ships with the repo. Rollback: revert scripts/lib/validate.sh.

## Known limitations and follow-ups
The detector keys on angle-bracket tokens; filled artifacts should avoid reusing a template
token verbatim.
