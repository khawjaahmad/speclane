# SpecLane CLI

A small, dependency-free Bash CLI that scaffolds and checks change folders. Separation of
concerns: `speclane` is a thin dispatcher; each command lives in its own `lib/` module.

## Make it executable

Files pushed via the API arrive without the executable bit. Once:

```bash
chmod +x scripts/speclane
```

Or run it through bash without chmod: `bash scripts/speclane <command>`.

## Commands

```
speclane new <feature|change|quickfix> <slug>   scaffold a change folder from templates
speclane list                                   list active changes
speclane validate [track] <slug>                check that required artifacts exist
speclane archive <slug>                         move a shipped change to archive/
```

Requires Bash 4+ and coreutils (`find`, `sed`, `awk`, `date`). No network, no packages.
