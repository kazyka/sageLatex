#!/bin/bash

latex example.tex
sage example.sage
latex example.tex

pdflatex example.tex

arg=${1:-.}
exts="aux bbl blg brf idx ilg ind lof log lol lot out toc synctex.gz sout pyc dvi sage.py"

if [ -d $arg ]; then
    for ext in $exts; do
         rm -f $arg/*.$ext
    done
else
    for ext in $exts; do
         rm -f $arg.$ext
    done
fi

evince example.pdf

