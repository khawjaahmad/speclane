---
slug: example-dark-mode
track: change
status: archived
owner: example
created: 0000-00-00
approval_domains: []
---

# Proposal: Add dark mode

> Worked example. Shows a complete `change` folder. Safe to delete in your own repo.

## Problem
Users working at night find the default light theme harsh. There is no way to switch themes.

## Outcome
A user can switch between light and dark themes; the choice persists across sessions and
respects the OS preference on first load.

## In scope
- A theme toggle in the app header.
- Persistence of the chosen theme.
- Honoring `prefers-color-scheme` on first visit.

## Out of scope
- Per-component custom themes.
- A theming API for third parties.

## Acceptance criteria
- [ ] A toggle switches the UI between light and dark immediately.
- [ ] The chosen theme persists after reload.
- [ ] First-time visitors see the theme matching their OS preference.
- [ ] No contrast regressions on primary screens.

## Affected systems
Frontend app only. No API, schema, or auth changes.

## Risks & notes
Low risk. Pure frontend. Watch contrast/accessibility on existing components.
