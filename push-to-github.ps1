# Portfolio Push to GitHub Script (PowerShell)
# This script initializes Git and pushes your portfolio to GitHub

Write-Host "========================================"
Write-Host "Portfolio Git Push Setup"
Write-Host "========================================"
Write-Host ""

# Navigate to portfolio directory
Set-Location "C:\Users\admin\Downloads\my portfolio"

# Check Git installation
Write-Host "Checking Git installation..."
try {
    git --version
} catch {
    Write-Host ""
    Write-Host "ERROR: Git is not installed!"
    Write-Host "Please install Git from: https://git-scm.com/download/win"
    Write-Host "Then run this script again."
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "========================================"
Write-Host "Initializing Git Repository"
Write-Host "========================================"
Write-Host ""

# Initialize git repo
git init

# Add all files
Write-Host "Adding files to git..."
git add .

# Create initial commit
Write-Host "Creating initial commit..."
git commit -m "Initial portfolio commit - Srinivas Pulikonda AI & Data Science Portfolio"

# Add remote repository
Write-Host "Adding remote repository..."
git branch -M main
git remote add origin https://github.com/23kb1a3080-cloud/promptportfolio.git

# Push to GitHub
Write-Host ""
Write-Host "========================================"
Write-Host "Pushing to GitHub"
Write-Host "========================================"
Write-Host ""
Write-Host "Note: You will be prompted for authentication."
Write-Host "You can use:"
Write-Host "  - Personal Access Token (recommended)"
Write-Host "  - GitHub credentials"
Write-Host ""

git push -u origin main

Write-Host ""
Write-Host "========================================"
Write-Host "Upload Complete!"
Write-Host "========================================"
Write-Host ""
Write-Host "Your portfolio has been pushed to:"
Write-Host "https://github.com/23kb1a3080-cloud/promptportfolio"
Write-Host ""
Read-Host "Press Enter to exit"
