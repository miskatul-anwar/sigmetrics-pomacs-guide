# SIGMETRICS/POMACS LaTeX Scaffold


This repository contains ACM `acmart`-based templates aligned with SIGMETRICS norms:

- `pomacs_main.tex`: POMACS (journal-style, single-column) submission.
- `sigmetrics_conf_main.tex`: SIGMETRICS conference short/extended abstract (two-column).
- `sigmetrics_src.tex`: Student Research Competition (SRC) 1–2 page extended abstract (adjust per CFP).

Both paper templates are configured for double-blind review (`anonymous`, `review`) and include page numbers for review. All templates compile without external assets, using a TikZ placeholder figure.
=======
This repository contains two ACM `acmart`-based templates aligned with SIGMETRICS norms:

- `pomacs_main.tex`: POMACS (journal-style, single-column) submission.
- `sigmetrics_conf_main.tex`: SIGMETRICS conference short/extended abstract (two-column).

Both are configured for double-blind review (`anonymous`, `review`) and include page numbers for review.

## Build

Requirements:
- `latexmk` and `pdflatex` (TeXLive or MacTeX). If you prefer `lualatex`/`xelatex`, adjust the `Makefile`.

Commands:
```bash

make            # builds both main PDFs (pomacs + conf)
make pomacs     # builds pomacs_main.pdf
make conf       # builds sigmetrics_conf_main.pdf
```

## Continuous Integration (CI)

A GitHub Actions workflow (`.github/workflows/latex.yml`) builds the PDFs on every push and PR, uploading artifacts you can download from the run summary. It attempts to build `pomacs_main.tex`, `sigmetrics_conf_main.tex`, and (optionally) `sigmetrics_src.tex`.

=======
make            # builds both PDFs
make pomacs     # builds pomacs_main.pdf
make conf       # builds sigmetrics_conf_main.pdf
make clean      # cleans artifacts
```


## Submission vs. Camera-ready

Submission (default here):
- Document class options:
  - POMACS: `\documentclass[acmsmall,screen,review,anonymous]{acmart}`
  - SIGCONF: `\documentclass[sigconf,review,anonymous]{acmart}`
- Top matter:
  - `\settopmatter{printacmref=false}`
  - `\pagestyle{plain}`
- Authors/acks/CCS/keywords: keep anonymous; cite your prior work in third person.

Camera-ready (after acceptance; verify the year's CFP):
1. Remove `review,anonymous`.
2. Restore ACM reference block (remove `\settopmatter{printacmref=false}`).
3. Add metadata (authors, CCS, keywords, acknowledgments, funding).
4. For POMACS, fill in volume/number/article/year/month if provided.

## Shared macros (`src/stats.tex`)

Both templates include `\input{src/stats}` which defines helpers:
- `\ci{mean}{low--high}` → "123 (95% CI: 120--126)"
- `\perc{12.3}` → "12.3%"
- `\unit{ms}` (requires `siunitx`) → typeset units with proper spacing
- `\figref{}`, `\tabref{}`, `\secref{}` shortcuts

=======
## Figures

Templates include a TikZ-based placeholder figure so they compile without external assets. Replace with real figures when ready. Prefer vector PDFs/SVGs; use colorblind-safe palettes and ensure grayscale readability.

## References

Edit `references.bib` and cite with `\\cite{...}`. Keep DOIs/URLs when available. The ACM reference format is selected via:
```
\\bibliographystyle{ACM-Reference-Format}
\\bibliography{references}
```

## Artifact (AE) Template

See `AE_README_template.md` for an anonymized Artifact README you can adapt for Artifact Evaluation.