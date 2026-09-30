@echo off
REM Deploy script - push academic homepage to GitHub Pages
REM Auto-syncs with remote edits before pushing (推送前自动拉取并 rebase)

set PATH=%PATH%;D:\Git\cmd
cd /d "D:\TraeCN\Homepage"

REM Check for changes
for /f "tokens=*" %%i in ('git status --porcelain') do set CHANGES=%%i
if defined CHANGES (
    echo HTML has been changed, committing...
    git add -A
    git commit -m "Update academic homepage"
) else (
    echo No changes, nothing to commit.
)

REM Fetch remote and rebase local commits on top (compatible with web edits)
git fetch origin main
for /f %%c in ('git rev-list --count master..origin/main') do set BEHIND=%%c
if defined BEHIND if not "%BEHIND%"=="0" (
    echo Remote has %BEHIND% newer commit(s), integrating...
    git rebase origin/main
    if errorlevel 1 (
        echo.
        echo [CONFLICT] Web edits conflict with local edits, auto-sync stopped.
        echo   To discard local rebase:  git rebase --abort
        echo   To resolve manually:      edit index.html, then git add -A and git rebase --continue
        pause
        exit /b 1
    )
)

REM Push to remote main branch
git push origin master:main
if errorlevel 1 (
    echo.
    echo [ERROR] Push failed. Run "git pull --rebase origin main" and retry.
)

pause
