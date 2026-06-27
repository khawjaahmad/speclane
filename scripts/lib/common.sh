#!/usr/bin/env bash
# Shared helpers for the SpecLane CLI.

SPECLANE_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
TEMPLATES="$SPECLANE_ROOT/templates"
CHANGES="$SPECLANE_ROOT/changes"

_red()    { printf '\033[31m%s\033[0m\n' "$*"; }
_yellow() { printf '\033[33m%s\033[0m\n' "$*"; }
_green()  { printf '\033[32m%s\033[0m\n' "$*"; }

info() { printf '%s\n' "$*"; }
die()  { printf 'error: %s\n' "$*" >&2; exit 1; }

valid_slug()  { [[ "$1" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; }
valid_track() { case "$1" in feature|change|quickfix) return 0 ;; *) return 1 ;; esac; }

# resolve_change <slug> -> prints the active change folder path, or returns 1.
resolve_change() {
  local slug="$1" match
  match="$(find "$CHANGES" -maxdepth 1 -type d -name "*-$slug" 2>/dev/null | sort | head -n1)"
  [[ -n "$match" ]] || return 1
  printf '%s\n' "$match"
}

# track_of <change-dir> -> prints the track from proposal.md frontmatter.
track_of() {
  awk -F': *' '/^track:/{print $2; exit}' "$1/proposal.md" 2>/dev/null | awk '{print $1}'
}
