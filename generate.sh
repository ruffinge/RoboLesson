#!/bin/sh
#
# This script will generate a PDF version of the style guide from the Markdown
# version using Pandoc.

TITLE="Version Control and Programming Documentation Lesson"
AUTHOR="Ethan Ruffing"
DATE="December 16, 2014"

echo "\n" > combined.md
cat ./"Lesson Overview.md" >> combined.md
echo "\n" >> combined.md
echo "\n" >> combined.md
cat ./"Git Commands.md" >> combined.md
echo "\n" >> combined.md
echo "\n" >> combined.md
cat Gitflow.md >> combined.md
echo "\n" >> combined.md
echo "\n" >> combined.md
cat ./"Project Design.md" >> combined.md
echo "\n" >> combined.md
echo "\n" >> combined.md
cat Markdown.md >> combined.md
echo "\n" >> combined.md
echo "\n" >> combined.md
cat Commenting.md >> combined.md
echo "\n" >> combined.md
echo "\n" >> combined.md
cat Style.md >> combined.md
echo "\n" >> combined.md
echo "\n" >> combined.md

pandoc combined.md -s -S -o combined.pdf --chapters -M author="$AUTHOR" -M title="$TITLE" -M date="$DATE" --toc --toc-depth=2
pandoc combined.md -s -S -o combined.html --chapters -M author="$AUTHOR" -M title="$TITLE" -M date="$DATE" --toc --toc-depth=2 -c css/github-pandoc.css
