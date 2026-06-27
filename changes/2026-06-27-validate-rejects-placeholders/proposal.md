---
slug: validate-rejects-placeholders
track: change
status: ready
owner: maintainers
created: 2026-06-27
approval_domains: []
---

# Proposal: validate rejects unfilled template placeholders

## Problem
The CLI command "speclane validate" passed a freshly scaffolded change even when every
artifact was still raw template text. The only readiness signal was the presence of a
checkbox line, and the templates ship checkbox lines, so empty scaffolds reported PASS. That
gives false assurance and lets unfilled work reach a pull request.

## Outcome
Validation fails when a required artifact still contains placeholder tokens copied from its
template, and the output names which artifact and which tokens remain. A genuinely filled
change continues to pass.

## In scope
- Detect leftover template placeholders in proposal, tasks, spec, and design artifacts.
- Report the offending artifact and the specific leftover tokens.
- Keep the existing required-file and acceptance-criteria checks.

## Out of scope
- Judging the quality or correctness of filled content.
- Changing the templates themselves.
- Any change to scaffolding, listing, or archiving.

## Acceptance criteria
- [ ] A freshly scaffolded, unedited change fails validation.
- [ ] The failure output names each artifact and its remaining placeholder tokens.
- [ ] The worked example change continues to pass validation.
- [ ] Quickfix changes are checked only for the artifacts that track requires.

## Affected systems
The SpecLane CLI only: scripts/lib/validate.sh. No effect on application code, providers, or
the methodology documents.

## Risks and notes
Low risk. The detector derives tokens from the template files at runtime, so it stays correct
if the templates change. A filled artifact that legitimately needs angle-bracket text should
avoid reusing a template token verbatim.
