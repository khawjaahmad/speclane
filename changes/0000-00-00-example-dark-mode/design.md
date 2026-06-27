# Design: Add dark mode

## Approach
Introduce a theme context backed by CSS custom properties. A small provider reads stored
preference, falls back to `prefers-color-scheme`, and exposes a toggle. No new dependencies.

## Contracts touched

| Contract | Change | Backward compatible? |
|----------|--------|----------------------|
| Public API | none | yes |
| Storage key `theme` | added (`light`/`dark`) | yes (new key) |

## Data & migration
None. A single client-side stored value; absence is handled by the OS-preference fallback.

## Sequencing
Ship behind no flag — it is additive and low-risk. Default behavior for existing users is
unchanged until they toggle.

## Rollback
Remove the toggle and provider; the stored key is ignored harmlessly. No data cleanup needed.

## Alternatives considered
A full theming engine (rejected: overkill); a server-stored preference (rejected: no auth/data
change wanted for this scope).
