# Chetana Gujare — Portfolio

## Project Description
This is my personal portfolio website built using **HTML, CSS, and JavaScript**. The purpose of this site is to showcase my skills, projects, and professional background as a **Python Full-Stack Developer** for placement opportunities.

## Technologies Used
- **Frontend:** HTML5, CSS3 (Glass-morphism), Vanilla JavaScript
- **Deployment:** AWS S3 + CloudFront (HTTPS & CDN)

## Deployment Steps (AWS S3 + CloudFront)
1. Created a private S3 bucket to store static assets.
2. Uploaded `index.html`, `style.css`, `script.js`, and profile photo.
3. Configured **CloudFront Origin Access Control (OAC)** to securely fetch files.
4. Updated S3 bucket policy to grant read access to CloudFront.
5. Enabled **HTTPS redirection** in CloudFront settings.
6. Deployed and tested via CloudFront domain.

## Challenges Faced & Solutions
- **403 Forbidden Error:** Initially, CloudFront couldn't access S3 files. Fixed by updating the bucket policy with the correct `Condition` block using CloudFront's "Copy Policy" feature.
- **CSS/JS not loading:** Verified relative file paths in `index.html` to ensure they matched the S3 root directory.

## Live URL
🔗 **https://ChetanaGujare.github.io**
