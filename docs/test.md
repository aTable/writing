---
title: my document
output:
  pdf:
    toc: true
    output: build/test.pdf
  html:
    standalone: true
    output: build/test.html
    include-in-header:
      - docs/foo.css
      - docs/bar.js
  latex:
    toc: true
    toc-depth: 3
    output: build/test.pdf
    template: letter.tex
    metadata:
      fontsize: 12pt
---

# my content
