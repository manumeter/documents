#!/bin/bash
# latexmk -pdf pflichtenheft.tex -pvc for preview continuously
 
if [ -z "$1" ]; then echo "Usage: $0 filename[.tex]"; exit 1; fi

file="$1"
if [ "${file##*.}" == "tex" ]; then file="${file%.*}"; fi

if [ ! -f "$file.tex" ]; then echo "File $file.tex not found!"; exit 1; fi

pdflatex "$file.tex"
pdflatex "$file.tex"
pdflatex "$file.tex"
pdflatex "$file.tex"
rm -f "$file.bbl"
rm -f "$file.blg"
rm -f "$file.log"
rm -f "$file.out"
rm -f "$file.toc"
rm -f "$file.lof"
rm -f "$file.lot"
rm -f img/*-eps-converted-to.pdf
rm -f *.aux
