# Personal Homepage

This is the source code for my personal homepage, designed with a clean, nature-inspired aesthetic.

## Features
- Responsive design that works on all devices
- Nature-inspired color palette
- Sections for about me, skills, and projects
- Social media integration

## Setup Instructions

### 1. Replace Profile Picture
- Replace `profile.jpg` with your actual profile image
- For best results, use a square image with minimum resolution 300x300px

### 2. Deploy to GitHub Pages

#### Prerequisites
- Git installed on your computer
- GitHub account (already set up as CharleyFreshman)

#### Deployment Steps
1. Initialize a git repository:
   ```
   git init
   git add .
   git commit -m "Initial commit - personal homepage"
   ```

2. Connect to your GitHub repository:
   ```
   git remote add origin https://github.com/CharleyFreshman/Garth.git
   ```

3. Push to GitHub:
   ```
   git push -u origin main
   ```

4. Enable GitHub Pages:
   - Go to your repository on GitHub (https://github.com/CharleyFreshman/Garth)
   - Click on "Settings" tab
   - Scroll down to "GitHub Pages" section
   - Under "Source", select "main" branch and root directory
   - Click "Save"
   - Your website will be available at https://charleyfreshman.github.io/Garth/

## Customization
- To modify content: Edit the `index.html` file
- To change styling: Modify the `styles.css` file
- To update colors: Change the CSS variables in the `:root` section of `styles.css`

## Technologies Used
- HTML5
- CSS3
- Font Awesome icons
- Responsive Web Design principles


个人简介内容: I'm Sifan Song, a 2026 graduate from Shanghai University of Finance and Economics, majoring in Data Science but more passionate about AI and Robotics.
For hobbies, I'm an anime enthusiast who loves sci-fi and fantasy genres. I enjoy playing basketball as a guard, and I've recently started learning piano, fond of J-pop and instrumental music. 
My MBTI is ISTJ, and I hope you'll appreciate my rational romance and humor!

、技能列表: Python、C++、R、SQL
、项目详情: https://github.com/CharleyFreshman
、社交媒体链接: https://x.com/Mochitsuki_574
、邮箱/联系方式： sifansong432@qq.com（白色字体）
、颜色偏好: 暖色调的二次元奇幻魔幻梦幻风格，但不要眼花缭乱；页面布局更紧凑一些，用第6张图片作为主页头像。

以及主页具体内容: 上传一些生活照，照片在picture文件夹（D:\Trae CN\Garth\picture），按顺序排列。

请根据以上信息，构建符合要求的网页，你需要上传到仓库地址： https://github.com/CharleyFreshman/charleyfreshman.github.io 。


cd "d:\Trae CN\Garth"
# 将所有修改文件暂存
git add .
# 提交到本地仓库
git commit -m Update portfolio with warm color theme and layout improvements
# 移除已存在的远程仓库
git remote remove origin
# 添加新的远程仓库
git remote add origin https://github.com/CharleyFreshman/charleyfreshman.github.io.git
# 验证远程仓库配置
git remote -v
# 推送到远程仓库
git push -u origin main