#!/bin/sh
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
pandoc -s main.tex --bibliography=citations.bib -o main.docx --citeproc