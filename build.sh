#!/bin/bash

mkdir -p build

# // TODO: support any depth of readme, this will involve tweaking panrun
for filename in ./docs/*.md; do
    echo "running panrun against $filename"
    ./panrun $filename --pdf-engine=xelatex
done

