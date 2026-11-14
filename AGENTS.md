# AGENTS.md

## Repository map

- `main.typ`: example document and template entry point.
- `lib.typ`: reusable document function.
- `typst.toml`: package/template identity and version.
- `Makefile`: `verify`, `format` and generated-output `clean` targets.
- `.github/workflows/ci.yml`: pinned shared Typst CI caller.

## Development and validation

Read [CONTRIBUTING.md](CONTRIBUTING.md) for the required setup, exact local
commands and evidence requirements. Run `make verify` and inspect the PDF before proposing a merge.
`typst.toml` is authoritative for package versions. Keep the declared package entry point and template entry point consistent with actual files.

## Operating model

This repository is maintained by one developer. Automated review, tests and
security gates replace mandatory human approvals. Do not add CODEOWNERS approval
requirements, team assignments or a second-maintainer dependency. Use a focused
branch and reviewable pull request; preserve unrelated and unmerged work.

## Boundaries

Never commit credentials or sensitive data. Keep generated files reproducible.
Prefer one authoritative configuration and link to it from tool-specific files.
Preserve deterministic source, fail closed on compilation or validation errors,
and keep publication tag-only. Do not enable shell escape, unpinned actions or
publication from ordinary branch pushes.

Use [BOOTSTRAP.md](BOOTSTRAP.md) for adoption decisions. Keep the applicability
declarations in `.github/community-bootstrap.json` aligned with actual project
configuration; they do not substitute for observed GitHub settings.
