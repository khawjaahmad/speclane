#!/usr/bin/env bash
# speclane new <track> <slug>

cmd_new() {
  local track="${1:-}" slug="${2:-}"
  [[ -n "$track" && -n "$slug" ]] || die "usage: speclane new <feature|change|quickfix> <slug>"
  valid_track "$track" || die "invalid track: $track (use feature|change|quickfix)"
  valid_slug "$slug"   || die "invalid slug: use lowercase letters, digits, and hyphens"
  if resolve_change "$slug" >/dev/null 2>&1; then
    die "a change with slug '$slug' already exists"
  fi

  local date dir
  date="$(date +%F)"
  dir="$CHANGES/${date}-${slug}"
  mkdir -p "$dir"

  sed -e "s/<change-slug>/$slug/g" \
      -e "s/^track:.*/track: $track/" \
      -e "s/<YYYY-MM-DD>/$date/g" \
      "$TEMPLATES/proposal.md" > "$dir/proposal.md"

  cp "$TEMPLATES/tasks.md"          "$dir/tasks.md"
  cp "$TEMPLATES/evidence-bundle.md" "$dir/evidence-bundle.md"
  sed -e "s/<change-slug>/$slug/g" "$TEMPLATES/change-readme.md" > "$dir/README.md"

  if [[ "$track" != quickfix ]]; then
    cp "$TEMPLATES/spec.md"   "$dir/spec.md"
    cp "$TEMPLATES/design.md" "$dir/design.md"
  fi

  _green "created ${dir#"$SPECLANE_ROOT/"}"
  info "track: $track"
  info "next:  fill proposal.md, then run your agent's 'specify' stage"
}
