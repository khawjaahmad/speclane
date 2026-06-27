# Tasks: Add dark mode

- [x] **1. Theme context + provider** — _changes:_ `src/theme/` · _verified by:_ unit test for fallback logic
- [x] **2. CSS custom properties for both themes** — _changes:_ `src/styles/` · _verified by:_ visual check on primary screens
- [x] **3. Header toggle component** — _changes:_ `src/components/Header` · _verified by:_ component test
- [x] **4. Persist + restore preference** — _changes:_ `src/theme/` · _verified by:_ test: reload keeps theme

## Test plan
Unit tests for preference resolution (stored → OS → default); component test for the toggle;
manual contrast pass on primary screens.

## Definition of done
- [x] All tasks complete and individually verified
- [x] Tests cover changed behavior
- [x] AI-generated code reviewed by a human
- [x] PR links to this change folder
- [x] Evidence captured per `docs/evidence.md`
