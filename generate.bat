:: This script will generate a PDF version of the style guide from the Markdown
:: version using Pandoc.

set TITLE="Version Control and Programming Documentation Lesson"
set AUTHOR="Ethan Ruffing"
set DATE="December 16, 2014"

echo. > "Complete Lesson.md"
type .\"Lesson Overview.md" >> "Complete Lesson.md"
echo. >> "Complete Lesson.md"
echo. >> "Complete Lesson.md"
type .\"Git Commands.md" >> "Complete Lesson.md"
echo. >> "Complete Lesson.md"
echo. >> "Complete Lesson.md"
type Gitflow.md >> "Complete Lesson.md"
echo. >> "Complete Lesson.md"
echo. >> "Complete Lesson.md"
type .\"Project Design.md" >> "Complete Lesson.md"
echo. >> "Complete Lesson.md"
echo. >> "Complete Lesson.md"
type Markdown.md >> "Complete Lesson.md"
echo. >> "Complete Lesson.md"
echo. >> "Complete Lesson.md"
type Commenting.md >> "Complete Lesson.md"
echo. >> "Complete Lesson.md"
echo. >> "Complete Lesson.md"
type Style.md >> "Complete Lesson.md"
echo. >> "Complete Lesson.md"
echo. >> "Complete Lesson.md"

pandoc "Complete Lesson.md" -s -S -o "Complete Lesson.pdf" --chapters -M author=%AUTHOR% -M title=%TITLE% -M date=%DATE% --toc --toc-depth=2
pandoc "Complete Lesson.md" -s -S -o "Complete Lesson.html" --chapters -M author=%AUTHOR% -M title=%TITLE% -M date=%DATE% --toc --toc-depth=2 -c css/github-pandoc.css
