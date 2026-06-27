# Spec delta: Theme preference

## ADDED

### Requirement: Theme selection
The system SHALL let a user choose between light and dark themes and SHALL persist that choice.

#### Scenario: Toggle theme
- GIVEN the app is open in light theme
- WHEN the user activates the theme toggle
- THEN the UI switches to dark theme immediately

#### Scenario: Persistence
- GIVEN the user chose dark theme
- WHEN the user reloads the app
- THEN the app loads in dark theme

#### Scenario: First-load default
- GIVEN a first-time visitor whose OS prefers dark
- WHEN the app loads with no stored preference
- THEN the app starts in dark theme

## Out of scope
Per-component theming and any third-party theming API remain unchanged (absent).
