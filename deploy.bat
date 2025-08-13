@echo off
REM 部署脚本 - 绕过PowerShell特殊字符限制

git add .
git commit -m "Initial commit - personal homepage"
git remote add origin https://github.com/CharleyFreshman/Garth.git
git push -u origin main