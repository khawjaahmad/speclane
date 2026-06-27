#!/usr/bin/env bash
# speclane validate [track] <slug>

cmd_validate() {
  [[ $# -ge 1 ]] || die "usage: speclane validate [track] <slug>"
  local slug="${*: -1}"
  local dir; dir="$(resolve_change "$slug")" || die "no active change found for slug '$slug'"
  local track; track="$(track_of "$dir")"
  local ok=1

  _check() { if [[ -f "$dir/$1" ]]; then info "  ok    $1"; else _red "  MISS  $1"; ok=0; fi; }

  info "validating $(basename "$dir") (track: ${track:-unknown})"
  _check proposal.md
  _check tasks.md
  _check evidence-bundle.md
  if [[ "$track" != quickfix ]]; then
    _check spec.md
    _check design.md
  fi

  if grep -Eq '^- \[[ xX]\]' "$dir/proposal.md" 2>/dev/null; then
    info "  ok    acceptance criteria present"
  else
    _red "  MISS  acceptance criteria (none found in proposal.md)"
    ok=0
  fi

  if [[ "$ok" -eq 1 ]]; then
    _green "PASS"
  else
    die "validation failed"
  fi
}
