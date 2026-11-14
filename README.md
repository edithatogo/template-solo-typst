# Solo-maintainer Typst template

[![CI](../../actions/workflows/ci.yml/badge.svg)](../../actions/workflows/ci.yml) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE) [![Citation](https://img.shields.io/badge/citation-CFF-blue.svg)](CITATION.cff)

A Typst 0.15 baseline with checksum-verified formatting, immutable CI, and structural PDF verification.

## Status

This repository is designed for one maintainer. Automated checks are required;
no second reviewer, CODEOWNERS approval, team membership, or mandatory human
approval is introduced.

## Usage

Choose **Use this template** to start a Typst document or reusable template,
then follow the [adoption checklist](BOOTSTRAP.md). `main.typ` applies the
`solo-document` function from `lib.typ`; `typst.toml` records the package and
template entry points.

1. Replace the title, author and example text in `main.typ` and update the
   package metadata in `typst.toml`.
2. Install the matching Typst, Typstyle and PDF-checking tools documented in
   [CONTRIBUTING.md](CONTRIBUTING.md).
3. Run `make verify` from the repository root.
4. Open `build/main.pdf` and review its layout and text before creating a
   release tag.

## Development

See [CONTRIBUTING.md](CONTRIBUTING.md) for setup and validation commands, and
[BOOTSTRAP.md](BOOTSTRAP.md) for the adoption checklist.

The pinned shared CI is configured to check Typstyle formatting, compile
fail-closed and validate the PDF with qpdf, pdfinfo and non-empty text
extraction. Inspect the actual run and PDF before relying on its output.

## Versioning

`typst.toml` is authoritative for a packaged template; otherwise release tags are authoritative. Citation metadata must not duplicate an unmanaged version.

## Logging

Runtime logging is not applicable to a typesetting-only repository; compiler logs are retained as CI evidence.

## Security

Follow [SECURITY.md](SECURITY.md) for private reporting and the safe contact
fallback if GitHub's **Report a vulnerability** option is unavailable. Do not
include credentials, sensitive source data or exploit details in public issues.

## Citation

See [CITATION.cff](CITATION.cff). Release-specific versions and identifiers are
added only when the release exists.

## License

Repository-authored starter material is MIT licensed; see [LICENSE](LICENSE).
Record third-party and source-data rights separately.
