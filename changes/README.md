# Changes

Each unit of work is a folder here while it is in flight. When it ships and its spec deltas are
merged into `specs/`, it moves to `archive/`.

```
changes/
  <YYYY-MM-DD>-<slug>/     active change
  archive/                 shipped changes (historical record)
```

Scaffold one with:

```bash
./scripts/speclane new change <slug>
```

See `changes/0000-00-00-example-dark-mode/` for a complete worked example.
