#!/bin/sh
#
# This script will generate a PDF version of the style guide from the Markdown
# version using Pandoc.

TITLE="Version Control and Programming Documentation Lesson"
AUTHOR="Ethan Ruffing"
DATE="December 16, 2014"

echo "\n" > "Complete Lesson.md"
cat ./"Lesson Overview.md" >> "Complete Lesson.md"
echo "\n" >> "Complete Lesson.md"
echo "\n" >> "Complete Lesson.md"
cat ./"Git Commands.md" >> "Complete Lesson.md"
echo "\n" >> "Complete Lesson.md"
echo "\n" >> "Complete Lesson.md"
cat Gitflow.md >> "Complete Lesson.md"
echo "\n" >> "Complete Lesson.md"
echo "\n" >> "Complete Lesson.md"
cat ./"Project Design.md" >> "Complete Lesson.md"
echo "\n" >> "Complete Lesson.md"
echo "\n" >> "Complete Lesson.md"
cat Markdown.md >> "Complete Lesson.md"
echo "\n" >> "Complete Lesson.md"
echo "\n" >> "Complete Lesson.md"
cat Commenting.md >> "Complete Lesson.md"
echo "\n" >> "Complete Lesson.md"
echo "\n" >> "Complete Lesson.md"
cat Style.md >> "Complete Lesson.md"
echo "\n" >> "Complete Lesson.md"
echo "\n" >> "Complete Lesson.md"

pandoc "Complete Lesson.md" -s -S -o "Complete Lesson.pdf" --chapters -M author="$AUTHOR" -M title="$TITLE" -M date="$DATE" --toc --toc-depth=2
pandoc "Complete Lesson.md" -s -S -o "Complete Lesson.html" --chapters -M author="$AUTHOR" -M title="$TITLE" -M date="$DATE" --toc --toc-depth=2 -c css/github-pandoc.css
