# 🚀 Push Portfolio to GitHub

A complete guide to push your portfolio source code to GitHub.

## Prerequisites

1. **Git Installation**
   - Download: https://git-scm.com/download/win
   - Install with default options
   - Restart your computer

2. **GitHub Account**
   - You already have: github.com/23kb1a3080-cloud
   - Repository: promptportfolio

3. **Authentication Method** (Choose one)
   - Personal Access Token (Recommended & Secure)
   - GitHub Username & Password

## Option 1: Automatic Setup Script (Recommended)

### Step 1: Install Git
1. Go to https://git-scm.com/download/win
2. Download and install (keep default settings)
3. Restart your computer

### Step 2: Run the Push Script

**For PowerShell** (Recommended for Windows 10+):
```
1. Open PowerShell
2. Run: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
3. Navigate to: C:\Users\admin\Downloads\my portfolio
4. Run: .\push-to-github.ps1
```

**For Command Prompt** (Traditional):
```
1. Open Command Prompt
2. Navigate to: C:\Users\admin\Downloads\my portfolio
3. Run: push-to-github.bat
```

### Step 3: Authenticate
When prompted for authentication, choose:

**Option A: Personal Access Token (RECOMMENDED)**
1. Go to: https://github.com/settings/tokens
2. Click "Generate new token" → "Generate new token (classic)"
3. Select scopes:
   - `repo` (Full control of private repositories)
   - `workflow` (Update GitHub Action workflows)
4. Click "Generate token"
5. Copy the token (it won't be shown again!)
6. Paste it when prompted for password in terminal

**Option B: GitHub Credentials**
- Username: your GitHub username
- Password: your GitHub password (or personal access token)

---

## Option 2: Manual Step-by-Step

If the script doesn't work, follow these steps manually:

### Step 1: Install Git
- Download from: https://git-scm.com/download/win
- Install and restart computer

### Step 2: Open Terminal
- Press `Win + R`
- Type: `cmd` (or `powershell`)
- Press Enter

### Step 3: Navigate to Portfolio
```bash
cd "C:\Users\admin\Downloads\my portfolio"
```

### Step 4: Initialize Git Repository
```bash
git init
```

### Step 5: Configure Git (First Time Only)
```bash
git config --global user.name "Srinivas Pulikonda"
git config --global user.email "srinivaspulikonda4@gmail.com"
```

### Step 6: Add All Files
```bash
git add .
```

### Step 7: Create Initial Commit
```bash
git commit -m "Initial portfolio commit - Srinivas Pulikonda AI & Data Science Portfolio"
```

### Step 8: Add Remote Repository
```bash
git remote add origin https://github.com/23kb1a3080-cloud/promptportfolio.git
```

### Step 9: Create Main Branch and Push
```bash
git branch -M main
git push -u origin main
```

### Step 10: Enter Credentials
- When prompted, use Personal Access Token or GitHub credentials
- Wait for upload to complete

---

## Troubleshooting

### Problem: "Git is not recognized"
**Solution**: 
- Git is not installed. Download and install from: https://git-scm.com/download/win
- Restart your computer after installation

### Problem: "fatal: not a git repository"
**Solution**:
- Make sure you're in the portfolio directory
- Run: `git init` first
- Then retry the commands

### Problem: "fatal: destination path 'promptportfolio' already exists"
**Solution**:
- You may have already cloned the repo. Go to: C:\Users\admin\Downloads\my portfolio
- Or use a different approach:
  ```bash
  git remote set-url origin https://github.com/23kb1a3080-cloud/promptportfolio.git
  git push -u origin main
  ```

### Problem: "remote rejected (push declined)"
**Solution**:
- Check that you have push permissions on the repository
- Verify your authentication credentials are correct
- For HTTPS, use a Personal Access Token instead of password

### Problem: "Please tell me who you are"
**Solution**:
```bash
git config --global user.name "Srinivas Pulikonda"
git config --global user.email "srinivaspulikonda4@gmail.com"
git commit --amend --no-edit
```

### Problem: "fatal: Permission denied"
**Solution**:
- This usually means authentication failed
- Use a Personal Access Token instead of password:
  1. Go to: https://github.com/settings/tokens
  2. Generate a new token
  3. Use token as password when prompted

---

## Verification

After successful push, verify by:

1. **Check Terminal Output**
   - Should show: `[main xxxxx] Initial portfolio commit...`
   - Should end with: branch tracking info

2. **Visit GitHub Repository**
   - Go to: https://github.com/23kb1a3080-cloud/promptportfolio
   - You should see all files listed:
     - index.html ✅
     - styles.css ✅
     - script.js ✅
     - README.md ✅
     - images/ folder ✅

3. **Check Latest Commit**
   - Message should be: "Initial portfolio commit - Srinivas Pulikonda AI & Data Science Portfolio"
   - Time should be recent

---

## Next Steps After Push

### 1. Deploy to GitHub Pages (Free Hosting!)
```bash
# In your GitHub repository settings:
1. Go to Settings → Pages
2. Select "Deploy from a branch"
3. Choose: main branch
4. Save
5. Wait 1-2 minutes
6. Your site will be live at: https://23kb1a3080-cloud.github.io/promptportfolio
```

### 2. Keep Portfolio Updated
After this, you can make changes locally and push updates:
```bash
# After making changes:
git add .
git commit -m "Update: description of changes"
git push
```

### 3. Share Your Portfolio
- GitHub Repo: https://github.com/23kb1a3080-cloud/promptportfolio
- Live Demo: https://23kb1a3080-cloud.github.io/promptportfolio (after enabling Pages)
- LinkedIn: Share the link in your profile
- Resume: Add to your resume/CV

---

## Git Useful Commands

```bash
# Check status
git status

# View commit history
git log

# Undo last commit (before push)
git reset --soft HEAD~1

# View all branches
git branch -a

# Update from GitHub
git pull origin main

# Create a new branch
git checkout -b new-branch-name

# Switch branches
git checkout branch-name
```

---

## Security Notes

- **Never share your Personal Access Token**
- Use `.gitignore` to exclude sensitive files (this portfolio doesn't have any)
- For sensitive data, always use environment variables or .env files (not included in repo)

---

## Support

If you encounter issues:
1. Check the Troubleshooting section above
2. Go to: https://github.com/23kb1a3080-cloud/promptportfolio/issues
3. Create a new issue describing the problem
4. GitHub support: https://support.github.com

---

## Summary

**Your Portfolio Files:**
- ✅ index.html (Main HTML file)
- ✅ styles.css (Styling & Design)
- ✅ script.js (Interactivity & Features)
- ✅ README.md (Documentation)
- ✅ CUSTOMIZATION.md (Customization Guide)
- ✅ QUICK_START.md (Quick Start Guide)
- ✅ images/ (22 Gallery Images)

**Repository:** https://github.com/23kb1a3080-cloud/promptportfolio

**Total Files:** 27 files + folders

---

Good luck pushing your portfolio! 🚀
