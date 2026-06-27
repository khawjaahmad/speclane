#!/usr/bin/env bash
# speclane list

cmd_list() {
  info "active changes:"
  local found=0 d t
  while IFS= read -r d; do
    [[ -z "$d" || "$d" == "$CHANGES" ]] && continue
    [[ "$(basename "$d")" == archive ]] && continue
    t="$(track_of "$d")"
    printf '  %-44s %s\n' "$(basename "$d")" "${t:-?}"
    found=1
  done < <(find "$CHANGES" -maxdepth 1 -type d 2>/dev/null | sort)
  [[ "$found" -eq 1 ]] || info "  (none)"
}
