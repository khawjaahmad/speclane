# Changelog

All notable changes to SpecLane are documented here. Format follows
[Keep a Changelog](https://keepachangelog.com/); versioning follows [SemVer](https://semver.org/).

## [Unreleased]

### Added
- Initial framework: methodology core, artifact templates, agent adapters, provider config,
  guardrails, and the SpecLane CLI.

### Fixed
- `speclane validate` now fails when a required artifact still contains template placeholders,
  instead of passing unfilled scaffolds. The output names each artifact and its leftover tokens.
