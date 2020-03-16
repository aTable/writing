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

without continually worrying about how it looks. Microsoft Word, and others, are powerful editors but it makes the author continually distracted with appearance when writing. Have you ever added words or an image to a document then had to juggle your page breaks wasting time re-aligning everything? That's exactly what markdown relieves you from allowing you to focus on authoring words.

## How it works

Any [markdown](https://guides.github.com/features/mastering-markdown/) file under the `/docs` directory that has a [metadata block](https://pandoc.org/MANUAL.html#metadata-blocks) configured will automatically be converted using [pandoc](https://pandoc.org/) and [panrun](https://github.com/mb21/panrun) for each commit that gets pushed by the configured GitHub Action `.github/workflows/pandoc.yml`.

Check out `docs/sample.md` to see an example metadata block and markdown file.

## Why do I want this

It's a completely free and open source solution to writing by leveraging the power of git to version control documents you author. Focus on writing your content and let the magic automatically convert it to `EPUB`, `docx`, `PDF`, `HTML`, a slideshow ...

## But I want my files private!

At the time I created this, you have no [limit on the amount of GitHub Action minutes](https://github.com/pricing) for a public repository. If you favour privacy, then you can make your repository private and be limited to 2000 GitHub Action minutes/month on the free tier. This repository is configured to run the GitHub Action each time you commit to `origin/master` so more saving = more minutes used.

Alternatively, if you are a power user or just want to convert the files on your machine, then you will want to install `pandoc` and enable the `git hook` to convert files on `post-commit`.

## Installation

```
sudo apt update
curl https://github.com/jgm/pandoc/releases/download/2.9.2/pandoc-2.9.2-1-amd64.deb -s -L --output pandoc-2.9.2-1-amd64.deb
sudo dpkg -i pandoc-2.9.2-1-amd64.deb
sudo apt install -y texlive texlive-xetex
```

Optionally, enable the git hook:

```
echo "./build.sh" > .git/hooks/post-commit
chmod +x .git/hooks/post-commit
```
