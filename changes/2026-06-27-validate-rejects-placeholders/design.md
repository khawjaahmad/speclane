# Design: validate rejects unfilled template placeholders

## Approach
At validation time, for each required artifact the validator reads the matching template,
extracts every angle-bracket token from it, and fails if any of those exact tokens still
appears in the filled artifact. Deriving tokens from the templates at runtime means the check
needs no hand-maintained list and stays accurate when templates evolve.

## Contracts touched

| Contract | Change | Backward compatible? |
|----------|--------|----------------------|
| validate exit code | now non-zero for unfilled scaffolds that previously exited zero | no, intentionally stricter |
| validate output | adds TODO lines naming leftover tokens | yes, additive |

## Data and migration
None. No state is stored or migrated.

## Sequencing
Single change to one library file. No flag or phased rollout needed.

## Rollback
Revert scripts/lib/validate.sh to the prior revision. No data or config implications.

## Alternatives considered
A fixed list of placeholder strings was rejected as brittle: it would drift whenever a
template changed. Matching any angle-bracket text regardless of template was rejected because
it would flag legitimate generics or markup that happen to use angle brackets.
