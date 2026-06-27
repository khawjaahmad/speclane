#!/usr/bin/env bash
# speclane archive <slug>

cmd_archive() {
  local slug="${1:-}"
  [[ -n "$slug" ]] || die "usage: speclane archive <slug>"
  local dir; dir="$(resolve_change "$slug")" || die "no active change found for slug '$slug'"

  if grep -Eq '^- \[ \]' "$dir/evidence-bundle.md" 2>/dev/null; then
    _yellow "warning: evidence-bundle.md still has unchecked items."
    printf 'archive anyway? [y/N] '
    read -r ans
    [[ "$ans" == y || "$ans" == Y ]] || die "aborted"
  fi

  mkdir -p "$CHANGES/archive"
  mv "$dir" "$CHANGES/archive/"
  _green "archived to changes/archive/$(basename "$dir")"
  info "reminder: merge the spec delta into specs/ if you have not already"
}
