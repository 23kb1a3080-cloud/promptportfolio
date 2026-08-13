# Portfolio Customization Checklist

Use this guide to personalize the portfolio with your actual information. Each section below shows what to update and where to find it in the HTML file.

## 🔍 Find & Replace Guide

Open `index.html` in your text editor and use Find & Replace (Ctrl+H) to make bulk updates.

### 1. Contact Information

**Find**: `contact@example.com`
**Replace with**: Your actual email address

**In locations**:
- Hero section (line ~90)
- Contact section (line ~320)
- Footer section (line ~370)

---

**Find**: `+91 XXXX XXXX XX`
**Replace with**: Your actual phone number

**In locations**:
- Contact section (line ~325)

---

## 🔗 Social Media Links

Update your GitHub and LinkedIn profiles:

### GitHub
**Find**: `https://github.com`
**Replace with**: `https://github.com/your-username`

**In locations**:
- Hero section (line ~95)
- Contact section (line ~335)
- Footer section (line ~375)

### LinkedIn
**Find**: `https://linkedin.com`
**Replace with**: `https://linkedin.com/in/your-profile-url`

**In locations**:
- Hero section (line ~99)
- Contact section (line ~333)
- Footer section (line ~373)

---

## 📂 Project Links

Update your project GitHub repository URLs:

### AI Chatbot Project
**Location**: Line ~261
```html
<a href="#" class="project-link" aria-label="GitHub">
```

**Change to**:
```html
<a href="https://github.com/yourusername/ai-chatbot-repo" class="project-link" aria-label="GitHub">
```

### Machine Learning Project
**Location**: Line ~283
```html
<a href="#" class="project-link" aria-label="GitHub">
```

**Change to**:
```html
<a href="https://github.com/yourusername/ml-project-repo" class="project-link" aria-label="GitHub">
```

---

## 🎯 Personal Information Updates

### Location
**Find**: `Tirupati, Andhra Pradesh`
**Replace with**: Your actual location

**In locations**:
- Contact section (line ~329)

---

### Percentages & Academic Info

If your grades differ, update:

**B.Tech Percentage**
**Find**: `75.6%`
**Replace with**: Your B.Tech percentage

**In locations**:
- About section (line ~164)
- Education section (line ~298)

**Intermediate Percentage**
**Find**: `90.4%`
**Replace with**: Your Intermediate percentage

**In locations**:
- About section (line ~168)
- Education section (line ~310)

**SSC Percentage**
**Find**: `92%`
**Replace with**: Your SSC percentage

**In locations**:
- About section (line ~172)
- Education section (line ~320)

---

### College/Institution Names

If your institutions differ, update:

**B.Tech College**
**Find**: `NBKR Institute of Technology`
**Replace with**: Your actual college name
**Location**: Education section (line ~301)

**Intermediate College**
**Find**: `MJPAPBCWRIES Junior College`
**Replace with**: Your actual college name
**Location**: Education section (line ~313)

**SSC School**
**Find**: `BSVS Vidyalayam`
**Replace with**: Your actual school name
**Location**: Education section (line ~323)

---

### Graduation Years

**B.Tech Years**
**Find**: `2023 – 2027`
**Replace with**: Your actual years
**Location**: Education section (line ~302)

---

## 💼 Experience Section Updates

### Update Internship Information

**First Internship**
**Location**: Lines ~340-350

Update:
- Company name
- Organizations (Edunet Foundation, etc.)
- Duration
- Description

Example:
```html
<h3>Your Job Title</h3>
<p class="organization">Company Name | Partner Organization</p>
<p class="date">Start Month Year – End Month Year</p>
<p class="description">Your detailed description...</p>
```

**Second Internship**
**Location**: Lines ~355-365

Update same fields as above.

---

## 🎓 Certifications

Update your actual certifications. Each certification card is in the certifications section (lines ~368-392).

**Template**:
```html
<div class="certification-card glass-card">
    <i class="fas fa-certificate"></i>
    <p>Your Certification Name</p>
</div>
```

Replace existing certifications with:
1. IBM SkillsBuild AI Internship
2. NPTEL – Your Course Name
3. AICTE Edunet AI Internship
4. Your Certification Name
5. HackerRank Python (Basic) or other

---

## 🛠️ Skills Section

Update your actual skills. Each skill category has tags you can modify.

**Example** (Programming Section - lines ~194-202):
```html
<div class="skill-tag">Python</div>
<div class="skill-tag">SQL</div>
<div class="skill-tag">Your Skill Here</div>
```

### Skill Categories to Review:
1. **Programming** (lines ~194-202)
2. **AI & Machine Learning** (lines ~208-216)
3. **Web Development** (lines ~222-230)
4. **Databases** (lines ~236-244)
5. **Tools & Platforms** (lines ~250-258)

---

## 📝 About Section

Update your professional bio.

**Location**: About section (line ~147)

**Current text**:
> "Srinivas Pulikonda is an Artificial Intelligence and Data Science undergraduate with hands-on exposure to Machine Learning, Data Analytics, Natural Language Processing, Python, SQL, and Web Development. He enjoys transforming ideas into practical technology solutions and continuously developing his skills through internships, projects, certifications, and technical challenges."

**Edit to** include:
- Your actual background
- Your technical focus areas
- Your professional interests
- Your learning approach

---

## 🎨 Branding & Styling

### Change Accent Colors

Edit `styles.css` (lines 15-18):

```css
--accent-gold: #d4a574;      /* Change this hex color */
--accent-warm: #c8956c;      /* Change this hex color */
```

Use a color picker: https://htmlcolorcodes.com/

### Change Background Colors

Edit in `styles.css`:

```css
--white: #ffffff;            /* Main background */
--cream: #faf8f5;            /* Secondary background */
--ivory: #f5f2ed;            /* Tertiary background */
```

### Change Typography

Replace font names in `styles.css` (line 53):

```css
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
```

Alternative modern fonts:
- 'Poppins', sans-serif
- 'Inter', sans-serif
- 'Raleway', sans-serif
- 'Dm Sans', sans-serif

---

## 🖼️ Adding a Profile Picture

To add a profile image in the hero section:

1. Save your professional photo as `profile.jpg` in the portfolio folder
2. Add this HTML after line 95 (in hero-content):

```html
<div class="profile-image">
    <img src="profile.jpg" alt="Srinivas Pulikonda">
</div>
```

3. Add this CSS to `styles.css`:

```css
.profile-image {
    width: 200px;
    height: 200px;
    margin: 2rem 0;
}

.profile-image img {
    width: 100%;
    height: 100%;
    border-radius: 16px;
    object-fit: cover;
    border: 2px solid rgba(212, 165, 116, 0.3);
}
```

---

## 📞 Contact Form

To make the contact form functional:

### Option 1: Formspree (Easiest)
1. Go to https://formspree.io/
2. Create account and new form
3. Copy your form ID
4. Update form action in `index.html` (line ~352):

```html
<form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
```

### Option 2: EmailJS
1. Go to https://www.emailjs.com/
2. Set up account
3. Add EmailJS library to `index.html` head:

```html
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/index.min.js"></script>
```

4. Initialize in `script.js` and update form handling

### Option 3: Backend Solution
Implement on your server (Node.js, Python, PHP) to handle form submissions and send emails.

---

## ✅ Pre-Deployment Checklist

Before deploying your portfolio, verify:

- [ ] All email addresses are correct
- [ ] All social media links work
- [ ] All project links are valid GitHub URLs
- [ ] Personal information is accurate
- [ ] Percentages and dates are correct
- [ ] No placeholder text remains
- [ ] Colors reflect your personal branding
- [ ] All sections are filled with real content
- [ ] Links open in correct locations
- [ ] Mobile responsiveness is tested
- [ ] Contact form is functional
- [ ] No broken images or icons
- [ ] Navigation links work correctly
- [ ] Footer information is accurate

---

## 🚀 Deployment Instructions

### GitHub Pages
1. Create GitHub repository: `username.github.io`
2. Clone locally
3. Copy portfolio files into repository
4. Commit and push:
   ```bash
   git add .
   git commit -m "Add portfolio"
   git push origin main
   ```
5. Visit `https://username.github.io` in browser

### Netlify
1. Go to https://netlify.com
2. Click "New site from Git"
3. Connect GitHub repository
4. Deploy (no build command needed)
5. Update domain name if desired

### Vercel
1. Go to https://vercel.com
2. Import project from GitHub
3. Deploy
4. Custom domain configuration available

---

## 📱 Testing Before Deployment

1. **Desktop Testing**
   - Chrome, Firefox, Safari, Edge
   - Test all interactive elements
   - Verify all links work

2. **Mobile Testing**
   - iPhone (various models)
   - Android devices
   - Tablet sizes
   - Use browser dev tools (F12) for responsive testing

3. **Functionality Testing**
   - Navigation smooth scrolling
   - Hamburger menu on mobile
   - Form validation
   - All external links open correctly
   - Social icons link to correct profiles

4. **Performance Testing**
   - Page load speed
   - Image optimization
   - Check with Google PageSpeed Insights

---

## 💡 Content Writing Tips

### Project Descriptions
- Be specific about your role
- Mention technologies used
- Highlight the impact or result
- Keep to 1-2 sentences

### About Section
- Focus on your unique value proposition
- Mention your technical strengths
- Show your learning attitude
- Make it recruiter-friendly

### Experience Section
- Quantify achievements if possible
- Show what you learned
- Use action verbs (Developed, Built, Created, etc.)
- Keep descriptions concise

---

## 🔄 Future Updates

After initial launch, consider updating:
- New projects quarterly
- Skills as you learn new technologies
- Certifications when completed
- Experience when starting new roles
- Bio to reflect current focus

---

**Portfolio Customization Complete! 🎉**

Your personalized portfolio is ready to showcase your AI & Data Science expertise to recruiters and potential employers.
