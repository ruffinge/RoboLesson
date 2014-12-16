:: This script will generate a PDF version of the style guide from the Markdown
:: version using Pandoc.

set TITLE="Version Control and Programming Documentation Lesson"
set AUTHOR="Ethan Ruffing"
set DATE="December 16, 2014"

echo. > combined.md
type .\"Lesson Overview.md" >> combined.md
echo. >> combined.md
echo. >> combined.md
type .\"Git Commands.md" >> combined.md
echo. >> combined.md
echo. >> combined.md
type Gitflow.md >> combined.md
echo. >> combined.md
echo. >> combined.md
type .\"Project Design.md" >> combined.md
echo. >> combined.md
echo. >> combined.md
type Markdown.md >> combined.md
echo. >> combined.md
echo. >> combined.md
type Commenting.md >> combined.md
echo. >> combined.md
echo. >> combined.md
type Style.md >> combined.md
echo. >> combined.md
echo. >> combined.md

pandoc "combined.md" -s -S -o "combined.pdf" --chapters -M author=%AUTHOR% -M title=%TITLE% -M date=%DATE% --toc --toc-depth=2
pandoc "combined.md" -s -S -o "combined.html" --chapters -M author=%AUTHOR% -M title=%TITLE% -M date=%DATE% --toc --toc-depth=2 -c css/github-pandoc.css
