# Article: Nuclear Cross-Sections Explained

Live site: <https://frankhjung.github.io/article-cross-sections/>

This repository contains the source and build tooling for the article "Nuclear
Cross-Sections Explained."

## Source

Primary source file: [cross-sections.md](cross-sections.md)

## Build (Make)

Requirements:

- [pandoc](https://pandoc.org/)
- a TeX engine for PDF output (e.g.,
  [xelatex](https://www.overleaf.com/learn/latex/XeLaTeX)

Targets:

- `make` → builds HTML and PDF into `public/` directory
- `make clean` → removes the `public/` directory

## Output

- HTML: `public/index.html`
- PDF: `public/cross-sections.pdf`
