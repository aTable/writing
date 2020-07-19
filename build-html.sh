#!/bin/bash

mkdir -p build

outputFormat="html"


for filepath in ./docs/*.md; do
    echo "running pandoc against $filepath"
    filename=$(basename $filepath)
    extension="${filepath##*.}"
    filePathNoExtension="${filepath%.*}"
    filenameNoExtension="${filename%.*}"
    pandoc -s --toc -c assets/pandoc.css -A assets/footer.html $filepath -o "build/$filenameNoExtension.$outputFormat"
done

# copy assets into build as pandoc generates relative paths from the provided params
mkdir build/assets
cp assets/* build/assets