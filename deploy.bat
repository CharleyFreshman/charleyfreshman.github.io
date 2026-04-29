@echo off
REM 部署脚本 - 将学术主页推送到GitHub Pages

cd /d "D:\Trae CN\Homepage"

REM 添加所有修改到暂存区
git add .

REM 提交更改
git commit -m "Update academic homepage with bilingual support and CV"

REM 推送到GitHub Pages仓库的main分支
git push -u origin master:main
