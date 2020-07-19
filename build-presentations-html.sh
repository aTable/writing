#!/bin/bash
# There are multiple slide presentation outputs:
#  - revealjs feels the smoothest but needs attention to markdown content to ensure content remains within slides
#  - dzslides also needs attention to markdown content
#  - slidy allows you to scroll up and down enabling you to show markdown content of any size; does not need attention to content to fit on the page like the others

mkdir -p build

outputFormat="html"
revealjsUrl="https://unpkg.com/reveal.js@3.9.2/"
revealjsTheme="moon"

for filepath in ./docs/*.md; do
    echo "running pandoc against $filepath"
    filename=$(basename $filepath)
    extension="${filepath##*.}"
    filePathNoExtension="${filepath%.*}"
    filenameNoExtension="${filename%.*}"
    pandoc -s --mathjax -i -t revealjs -o "build/$filenameNoExtension-revealjs.$outputFormat" -V revealjs-url=$revealjsUrl -V theme=$revealjsTheme $filepath 
    pandoc -s --mathml -i -t dzslides -o "build/$filenameNoExtension-dzslides.$outputFormat" $filepath 
    pandoc -s --webtex -i -t slidy -o "build/$filenameNoExtension-slidy.$outputFormat" $filepath     
done