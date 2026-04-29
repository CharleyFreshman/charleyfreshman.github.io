@echo off
REM 部署脚本 - 将学术主页推送到GitHub Pages

cd /d "D:\Trae CN\Homepage"

REM 检查是否有文件变更
git status --porcelain > nul
if %errorlevel% neq 0 (
    echo 发现文件变更，正在提交...
    
    REM 添加所有修改到暂存区
    git add -A
    
    REM 提交更改
    git commit -m "Update academic homepage"
    
    REM 推送到GitHub Pages仓库的main分支
    git push -u origin master:main
) else (
    echo 没有文件变更，无需提交。
)

pause
