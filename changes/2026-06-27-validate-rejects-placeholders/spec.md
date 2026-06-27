# Spec delta: change validation readiness

## ADDED

### Requirement: Reject unfilled placeholders
The validate command SHALL fail when a required artifact still contains a placeholder token
that originates from its template, and SHALL report the artifact and the remaining tokens.

#### Scenario: Unfilled scaffold
- GIVEN a change scaffolded from templates with no edits
- WHEN the maintainer runs validate on it
- THEN validation fails and lists the leftover placeholders per artifact

#### Scenario: Filled change
- GIVEN a change whose artifacts have been filled in
- WHEN the maintainer runs validate on it
- THEN validation passes

## MODIFIED
The readiness check previously relied only on the presence of a checkbox line. It now also
requires that template placeholders have been replaced in the artifacts each track requires.

## Out of scope
Content quality, template wording, and the scaffold, list, and archive commands are unchanged.
