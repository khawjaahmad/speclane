# Living specifications

This directory is the **system of record**: it describes the software as it actually is, one
capability per area. It is updated at *archive* time, when a change's spec deltas merge in.

## Layout

```
specs/
  <capability>/spec.md     one file per capability (auth, billing, search, ...)
  adr/                     accepted Architecture Decision Records
```

## Rules

- Specs describe behavior that exists now — not proposals, not history.
- A change never edits `specs/` directly during implementation; it edits its own delta, which is
  merged here on archive.
- If code and a living spec disagree, that is a defect to reconcile.

Until the first change is archived, this directory is intentionally near-empty.
