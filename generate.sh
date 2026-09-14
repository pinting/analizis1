#!/bin/bash
# Build device-sized PDFs of book.md and notes.md for e-ink readers.
#   *-remarkable.pdf  reMarkable 1     1404x1872 px @ 226 dpi -> 447.29 x 596.39 bp
#   *-kindle.pdf      Kindle PW4 (10g) 1072x1448 px @ 300 ppi -> 257.28 x 347.52 bp
# Page boxes match the panel aspect ratio so the reader shows the page
# full-screen with no letterboxing and no pinch-zooming.
set -euo pipefail
cd "$(dirname "$0")"

COMMON=(
  --pdf-engine=xelatex
  --toc --toc-depth=2
  -V documentclass=extarticle
  -V mainfont=FreeSerif -V sansfont=FreeSans -V monofont=FreeMono
  -V colorlinks=false
  -H header.tex
)

REMARKABLE=(
  -H header-remarkable.tex
  -V fontsize=11pt
  -V geometry:paperwidth=447.29bp -V geometry:paperheight=596.39bp
  -V geometry:top=11mm -V geometry:bottom=13mm
  -V geometry:left=11mm -V geometry:right=11mm
)

KINDLE=(
  -H header-kindle.tex
  -V fontsize=9pt
  -V geometry:paperwidth=257.28bp -V geometry:paperheight=347.52bp
  -V geometry:top=5mm -V geometry:bottom=8mm
  -V geometry:left=5mm -V geometry:right=5mm
)

build() { # build <source.md> <basename> <pdf title>
  local src="$1" base="$2" title="$3"
  # title-meta only fills in the PDF metadata; it does not add a title page,
  # since both documents already open with their own heading.
  # No -V lang: this TeX install has no Hungarian hyphenation patterns.
  echo "==> $base-remarkable.pdf"
  pandoc "$src" -o "$base-remarkable.pdf" -V title-meta="$title" "${COMMON[@]}" "${REMARKABLE[@]}"
  echo "==> $base-kindle.pdf"
  pandoc "$src" -o "$base-kindle.pdf"     -V title-meta="$title" "${COMMON[@]}" "${KINDLE[@]}"
}

build book.md  book  "Introduction to Mathematical Analysis and Calculus"
build notes.md notes "Analízis I."
