#!/bin/bash

mkdir -p build

outputFormat="pdf"

for filepath in ./docs/*.md; do
    echo "running pandoc against $filepath"
    filename=$(basename $filepath)
    extension="${filepath##*.}"
    filePathNoExtension="${filepath%.*}"
    filenameNoExtension="${filename%.*}"
    pandoc $filepath -o "build/$filenameNoExtension.$outputFormat" --pdf-engine=xelatex
done