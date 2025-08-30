# 🚀 QUICK DEPLOY - 5 Minutes to Live

## Step 1: Create GitHub Repository (2 minutes)

1. Go to [github.com](https://github.com) and login
2. Click "New" repository 
3. Name: `devnovate-blog-platform`
4. Make it Public
5. Don't initialize with README (we have files already)
6. Click "Create repository"

## Step 2: Push Your Code (1 minute)

```bash
cd C:\projects\project1282
git remote add origin https://github.com/YOUR_USERNAME/devnovate-blog-platform.git
git branch -M main
git push -u origin main
```

## Step 3: Deploy Backend to Render (2 minutes)

1. Go to [render.com](https://render.com) and signup/login
2. Click "New +" → "Web Service"
3. Connect GitHub → Select your repository
4. Configure:
   - Name: `devnovate-blog-backend`
   - Root Directory: `backend`
   - Build Command: `npm install`
   - Start Command: `npm start`

5. Environment Variables (copy exactly):
```
NODE_ENV=production
MONGODB_URI=mongodb+srv://ayush13dp_db_user:Parganih1210%40@cluster0.wnkuptn.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0
JWT_SECRET=d5d7b85f313b9d69e1e719fac31f8ed8396781b610b6a1f847f8a8c3166f2cf5b935c4f8c07c0b24df2c52e67956abd662501d7c47a33b3c617097d990463abb
EMAIL_HOST=smtp.gmail.com
EMAIL_PORT=587
EMAIL_USER=lakshyaparmar1282@gmail.com
EMAIL_PASS=your-app-password
FRONTEND_URL=https://devnovate-blog-platform.vercel.app
CORS_ORIGIN=https://devnovate-blog-platform.vercel.app
```

6. Click Deploy

## Step 4: Deploy Frontend to Vercel (2 minutes)

1. Go to [vercel.com](https://vercel.com) and signup/login
2. Click "New Project"
3. Import from GitHub → Select your repository
4. Configure:
   - Project Name: `devnovate-blog-platform`
   - Root Directory: `frontend`
   - Framework Preset: Create React App

5. Environment Variables:
```
REACT_APP_API_URL=https://YOUR_BACKEND_URL.onrender.com/api
```
(Replace YOUR_BACKEND_URL with actual URL from Step 3)

6. Click Deploy

## Step 5: Update CORS (30 seconds)

1. Go back to Render dashboard
2. Update environment variables:
   - `FRONTEND_URL` = your actual Vercel URL
   - `CORS_ORIGIN` = your actual Vercel URL
3. Redeploy

## 🎉 Done!

Your app will be live at:
- Frontend: https://devnovate-blog-platform.vercel.app
- Backend: https://your-backend.onrender.com

Test the /health endpoint to verify backend is working!
