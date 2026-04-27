#!/usr/bin/env bash
set -euo pipefail
base="${1:-main}"
pdflatex -interaction=nonstopmode "$base.tex"
bibtex "$base"
pdflatex -interaction=nonstopmode "$base.tex"
pdflatex -interaction=nonstopmode "$base.tex"
