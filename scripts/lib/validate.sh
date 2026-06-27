#!/usr/bin/env bash
# speclane validate <slug>

# _placeholders_left <artifact> <template>
# Prints any template placeholder tokens (e.g. <criterion>) still present in the
# filled artifact. Returns 0 if leftovers were found, 1 otherwise.
_placeholders_left() {
  local artifact="$1" template="$2" tok left=""
  [[ -f "$artifact" && -f "$template" ]] || return 1
  while IFS= read -r tok; do
    [[ -z "$tok" ]] && continue
    grep -Fq "$tok" "$artifact" && left+="$tok "
  done < <(grep -oE '<[^>]+>' "$template" 2>/dev/null | sort -u)
  [[ -n "$left" ]] || return 1
  printf '%s' "${left% }"
}

cmd_validate() {
  [[ $# -ge 1 ]] || die "usage: speclane validate <slug>"
  local slug="${*: -1}"
  local dir; dir="$(resolve_change "$slug")" || die "no active change found for slug '$slug'"
  local track; track="$(track_of "$dir")"
  local ok=1

  _check() { if [[ -f "$dir/$1" ]]; then info "  ok    $1"; else _red "  MISS  $1"; ok=0; fi; }

  _filled() {
    local left
    if left="$(_placeholders_left "$dir/$1" "$TEMPLATES/$2")"; then
      _red "  TODO  $1 still has template placeholders: $left"
      ok=0
    fi
  }

  info "validating $(basename "$dir") (track: ${track:-unknown})"
  _check proposal.md
  _check tasks.md
  _check evidence-bundle.md
  if [[ "$track" != quickfix ]]; then
    _check spec.md
    _check design.md
  fi

  _filled proposal.md proposal.md
  _filled tasks.md tasks.md
  if [[ "$track" != quickfix ]]; then
    _filled spec.md spec.md
    _filled design.md design.md
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
