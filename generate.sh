#!/bin/bash

pandoc book.md -o book.pdf -V geometry:margin=1.5in --pdf-engine=xelatex -V mainfont="FreeSerif" -V monofont="FreeMono" -H header.tex
