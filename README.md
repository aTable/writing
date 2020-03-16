# Writing

![Build](https://github.com/aTable/writing/workflows/Build/badge.svg)

This is a template repository configured so you start writing your markdown files under `/docs` and they automatically get converted to your metadata output in `/build` available as a downloadable build artifact with each commit. By using [pandoc](https://pandoc.org/), we can focus on writing content:

```markdown
# My essay

## How great this essay is

This essay is great because:

- point one
- point two
- point three
- ...

## Bibliography

1. me
```

without continually worrying about how it looks. Microsoft Word, and others, are powerful editors but it makes the author continually worry about appearance when writing. Have you ever added words or an image to a document then had to juggle your page breaks wasting time re-aligning everything? That's exactly what markdown relieves you from allowing you to focus on authoring content.

## Installation

You will need to [install pandoc](https://pandoc.org/installing.html). Then, follow these steps to add PDF support:

### Ubuntu

```
sudo apt update
sudo apt install -y texlive texlive-xetex
```

Optionally, enable the git hook:

```
echo "./build.sh" > .git/hooks/post-commit
chmod +x .git/hooks/post-commit
```
