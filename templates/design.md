# Design: <Title>

> Make the technical decisions visible before code exists. Required for `feature` and `change`.
> For `quickfix`, this file is omitted and the omission is recorded in the proposal.

## Approach
<The chosen technical approach, in a few sentences. Why this over the alternatives.>

## Contracts touched
<APIs, schemas, event payloads, auth behavior, migrations. For each: the exact before → after.>

| Contract | Change | Backward compatible? |
|----------|--------|----------------------|
| <name>   | <desc> | yes/no               |

## Data & migration
<Schema/data changes and the migration plan. Forward and rollback.>

## Sequencing
<Order of operations to ship safely. Feature flags, phased rollout, dependencies.>

## Rollback
<How to reverse or mitigate if this fails in production.>

## Alternatives considered
<Briefly: what else was on the table and why it was not chosen.>
