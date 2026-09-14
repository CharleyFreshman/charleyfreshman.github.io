@echo off
REM Deploy script - push academic homepage to GitHub Pages

set PATH=%PATH%;D:\Git\cmd
cd /d "D:\TraeCN\Homepage"

REM Check for changes
for /f "tokens=*" %%i in ('git status --porcelain') do set CHANGES=%%i
if defined CHANGES (
    echo Code has been changed, committing...

    git add -A

    git commit -m "Update academic homepage"

    REM Push to remote main branch
    git push -u origin master:main
) else (
    echo No changes, nothing to commit.
)

pause
