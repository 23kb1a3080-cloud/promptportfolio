@echo off
REM Portfolio Push to GitHub Script
REM This script initializes Git and pushes your portfolio to GitHub

echo ========================================
echo Portfolio Git Push Setup
echo ========================================
echo.

REM Navigate to portfolio directory
cd "C:\Users\admin\Downloads\my portfolio"

echo Checking Git installation...
git --version
if errorlevel 1 (
    echo.
    echo ERROR: Git is not installed!
    echo Please install Git from: https://git-scm.com/download/win
    echo Then run this script again.
    pause
    exit /b 1
)

echo.
echo ========================================
echo Initializing Git Repository
echo ========================================
echo.

REM Initialize git repo
git init

REM Add all files
echo Adding files to git...
git add .

REM Create initial commit
echo Creating initial commit...
git commit -m "Initial portfolio commit - Srinivas Pulikonda AI & Data Science Portfolio"

REM Add remote repository
echo Adding remote repository...
git branch -M main
git remote add origin https://github.com/23kb1a3080-cloud/promptportfolio.git

REM Push to GitHub
echo.
echo ========================================
echo Pushing to GitHub
echo ========================================
echo.
echo Note: You will be prompted for authentication.
echo You can use:
echo  - Personal Access Token (recommended)
echo  - GitHub credentials
echo.

git push -u origin main

echo.
echo ========================================
echo Upload Complete!
echo ========================================
echo.
echo Your portfolio has been pushed to:
echo https://github.com/23kb1a3080-cloud/promptportfolio
echo.
pause
