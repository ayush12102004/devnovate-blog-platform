# 🚢 DevNovate Blog Platform - Deployment Guide

This guide covers deployment strategies for different platforms and environments.

## 📋 Table of Contents

- [🌐 Frontend Deployment](#-frontend-deployment)
- [🚀 Backend Deployment](#-backend-deployment)
- [🗄️ Database Setup](#️-database-setup)
- [🔧 Environment Configuration](#-environment-configuration)
- [📊 Monitoring & Analytics](#-monitoring--analytics)
- [🔒 Security Considerations](#-security-considerations)

## 🌐 Frontend Deployment

### **Netlify Deployment**

1. **Build the Project**:
   ```bash
   cd frontend
   npm run build
   ```

2. **Deploy to Netlify**:
   - Connect your GitHub repository to Netlify
   - Set build command: `npm run build`
   - Set publish directory: `build`
   - Set environment variables in Netlify dashboard

3. **Environment Variables**:
   ```env
   REACT_APP_API_URL=https://your-backend-url.com/api
   ```

### **Vercel Deployment**

1. **Install Vercel CLI**:
   ```bash
   npm install -g vercel
   ```

2. **Deploy**:
   ```bash
   cd frontend
   vercel --prod
   ```

3. **Configuration** (`vercel.json`):
   ```json
   {
     "builds": [
       {
         "src": "package.json",
         "use": "@vercel/static-build",
         "config": { "distDir": "build" }
       }
     ],
     "routes": [
       {
         "src": "/(.*)",
         "dest": "/index.html"
       }
     ]
   }
   ```

### **GitHub Pages Deployment**

1. **Install gh-pages**:
   ```bash
   cd frontend
   npm install --save-dev gh-pages
   ```

2. **Add Scripts** to `package.json`:
   ```json
   {
     "scripts": {
       "predeploy": "npm run build",
       "deploy": "gh-pages -d build"
     },
     "homepage": "https://yourusername.github.io/devnovate-blog"
   }
   ```

3. **Deploy**:
   ```bash
   npm run deploy
   ```

## 🚀 Backend Deployment

### **Heroku Deployment**

1. **Install Heroku CLI**:
   - Download from [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli)

2. **Login to Heroku**:
   ```bash
   heroku login
   ```

3. **Create Heroku App**:
   ```bash
   cd backend
   heroku create your-app-name
   ```

4. **Set Environment Variables**:
   ```bash
   heroku config:set NODE_ENV=production
   heroku config:set JWT_SECRET=your-production-jwt-secret
   heroku config:set MONGODB_URI=your-mongodb-atlas-uri
   heroku config:set FRONTEND_URL=https://your-frontend-url.com
   ```

5. **Deploy**:
   ```bash
   git add .
   git commit -m "Deploy to Heroku"
   git push heroku main
   ```

6. **Procfile** (create in backend directory):
   ```
   web: node server.js
   ```

### **Railway Deployment**

1. **Connect GitHub Repository**:
   - Go to [Railway](https://railway.app/)
   - Connect your GitHub repository
   - Select the backend directory

2. **Environment Variables**:
   ```env
   NODE_ENV=production
   JWT_SECRET=your-production-jwt-secret
   MONGODB_URI=your-mongodb-atlas-uri
   FRONTEND_URL=https://your-frontend-url.com
   PORT=5000
   ```

3. **Deploy**:
   - Railway automatically deploys on git push

### **Digital Ocean App Platform**

1. **Create App Spec** (`.do/app.yaml`):
   ```yaml
   name: devnovate-blog-backend
   services:
   - name: api
     source_dir: /backend
     github:
       repo: yourusername/devnovate-blog
       branch: main
     run_command: npm start
     environment_slug: node-js
     instance_count: 1
     instance_size_slug: basic-xxs
     envs:
     - key: NODE_ENV
       value: production
     - key: JWT_SECRET
       value: your-jwt-secret
       type: SECRET
     - key: MONGODB_URI
       value: your-mongodb-uri
       type: SECRET
   ```

2. **Deploy**:
   ```bash
   doctl apps create .do/app.yaml
   ```

## 🗄️ Database Setup

### **MongoDB Atlas (Recommended for Production)**

1. **Create MongoDB Atlas Account**:
   - Go to [MongoDB Atlas](https://www.mongodb.com/cloud/atlas)
   - Create a free account

2. **Create Cluster**:
   - Create a new cluster (free tier available)
   - Choose your region
   - Wait for cluster creation

3. **Database Setup**:
   - Create database: `devnovate-blog`
   - Create collections: `users`, `blogs`

4. **Network Access**:
   - Add IP addresses (or 0.0.0.0/0 for development)
   - Create database user with read/write permissions

5. **Connection String**:
   ```
   mongodb+srv://username:password@cluster.mongodb.net/devnovate-blog?retryWrites=true&w=majority
   ```

### **Local MongoDB Setup**

#### **Windows**
1. Download MongoDB Community Server
2. Install with default settings
3. Start MongoDB service:
   ```cmd
   net start MongoDB
   ```

#### **macOS**
```bash
# Install via Homebrew
brew tap mongodb/brew
brew install mongodb-community
brew services start mongodb/brew/mongodb-community
```

#### **Linux (Ubuntu)**
```bash
# Import public key
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -

# Add MongoDB repository
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

# Install MongoDB
sudo apt-get update
sudo apt-get install -y mongodb-org

# Start MongoDB
sudo systemctl start mongod
sudo systemctl enable mongod
```

## 🔧 Environment Configuration

### **Production Environment Variables**

#### **Backend (.env)**
```env
# Server
NODE_ENV=production
PORT=5000

# Database
MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/devnovate-blog

# Security
JWT_SECRET=super-secure-production-jwt-secret-64-characters-minimum
BCRYPT_ROUNDS=12

# CORS
FRONTEND_URL=https://your-frontend-domain.com
CORS_ORIGIN=https://your-frontend-domain.com

# Rate Limiting
RATE_LIMIT_WINDOW_MS=900000
RATE_LIMIT_MAX_REQUESTS=100

# Email (if using)
EMAIL_HOST=smtp.gmail.com
EMAIL_PORT=587
EMAIL_USER=your-production-email@gmail.com
EMAIL_PASS=your-app-specific-password
```

#### **Frontend Environment Variables**
```env
# API Configuration
REACT_APP_API_URL=https://your-backend-url.com/api

# Analytics (if using)
REACT_APP_GOOGLE_ANALYTICS_ID=GA-XXXXXXXXX

# Environment
REACT_APP_ENVIRONMENT=production
```

### **Development vs Production Differences**

| Feature | Development | Production |
|---------|-------------|------------|
| **Database** | Local MongoDB | MongoDB Atlas |
| **JWT Secret** | Simple string | Secure 64+ char string |
| **CORS** | `*` allowed | Specific domains only |
| **Logging** | Console logs | File/Service logging |
| **Error Handling** | Detailed errors | Generic error messages |
| **Rate Limiting** | Disabled/Loose | Strict limits |

## 📊 Monitoring & Analytics

### **Backend Monitoring**

#### **Health Check Endpoint**
Add to your backend:
```javascript
app.get('/health', (req, res) => {
  res.status(200).json({
    status: 'OK',
    timestamp: new Date().toISOString(),
    uptime: process.uptime(),
    environment: process.env.NODE_ENV
  });
});
```

#### **Logging Setup**
```bash
# Install Winston for better logging
npm install winston
```

### **Frontend Analytics**

#### **Google Analytics Setup**
1. Create Google Analytics account
2. Add tracking ID to environment variables
3. Install analytics package:
   ```bash
   npm install react-ga4
   ```

## 🔒 Security Considerations

### **Backend Security Checklist**
- [ ] Use HTTPS in production
- [ ] Implement rate limiting
- [ ] Validate and sanitize all inputs
- [ ] Use strong JWT secrets
- [ ] Enable CORS only for trusted domains
- [ ] Implement proper error handling
- [ ] Use security headers (Helmet.js)
- [ ] Regular security updates

### **Frontend Security Checklist**
- [ ] Sanitize user inputs
- [ ] Use HTTPS
- [ ] Implement Content Security Policy
- [ ] Avoid storing sensitive data in localStorage
- [ ] Validate API responses
- [ ] Use secure authentication flows

### **Database Security**
- [ ] Use MongoDB Atlas for production
- [ ] Enable authentication
- [ ] Use connection strings with credentials
- [ ] Implement proper indexing
- [ ] Regular backups
- [ ] Monitor access logs

## 🚀 Quick Deployment Commands

### **Complete Deployment Workflow**

```bash
# 1. Prepare for deployment
npm run test                    # Run all tests
npm run build                   # Build frontend

# 2. Deploy backend (Heroku example)
cd backend
heroku create devnovate-api
heroku config:set NODE_ENV=production
heroku config:set JWT_SECRET=your-secret
heroku config:set MONGODB_URI=your-mongodb-uri
git push heroku main

# 3. Deploy frontend (Netlify example)
cd ../frontend
npm run build
# Upload build folder to Netlify or use Netlify CLI

# 4. Update environment variables
# Update REACT_APP_API_URL to point to deployed backend
```

### **Environment Setup Scripts**

#### **Production Setup Script**
```bash
#!/bin/bash
echo "🚀 Setting up production environment..."

# Set production environment variables
export NODE_ENV=production
export JWT_SECRET=$(openssl rand -hex 64)

# Build frontend
cd frontend && npm run build

# Start backend
cd ../backend && npm start
```

## 🔄 CI/CD Pipeline

### **GitHub Actions Example**
Create `.github/workflows/deploy.yml`:

```yaml
name: Deploy DevNovate Blog

on:
  push:
    branches: [ main ]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Setup Node.js
      uses: actions/setup-node@v2
      with:
        node-version: '16'
    - name: Install dependencies
      run: |
        cd backend && npm install
        cd ../frontend && npm install
    - name: Run tests
      run: |
        cd backend && npm test
        cd ../frontend && npm test

  deploy-backend:
    needs: test
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Deploy to Heroku
      uses: akhileshns/heroku-deploy@v3.12.12
      with:
        heroku_api_key: ${{secrets.HEROKU_API_KEY}}
        heroku_app_name: "your-app-name"
        heroku_email: "your-email@example.com"
        appdir: "backend"

  deploy-frontend:
    needs: test
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Setup Node.js
      uses: actions/setup-node@v2
      with:
        node-version: '16'
    - name: Install and Build
      run: |
        cd frontend
        npm install
        npm run build
    - name: Deploy to Netlify
      uses: nwtgck/actions-netlify@v1.2
      with:
        publish-dir: './frontend/build'
        production-branch: main
      env:
        NETLIFY_AUTH_TOKEN: ${{ secrets.NETLIFY_AUTH_TOKEN }}
        NETLIFY_SITE_ID: ${{ secrets.NETLIFY_SITE_ID }}
```

## 🏁 Post-Deployment Checklist

### **Immediate After Deployment**
- [ ] Test all critical user flows
- [ ] Verify authentication works
- [ ] Test blog creation and editing
- [ ] Check admin dashboard functionality
- [ ] Verify database connections
- [ ] Test responsive design on various devices

### **Ongoing Maintenance**
- [ ] Monitor application logs
- [ ] Check database performance
- [ ] Update dependencies regularly
- [ ] Monitor user feedback
- [ ] Backup database regularly
- [ ] Monitor security alerts

## 📞 Support & Troubleshooting

### **Common Deployment Issues**

#### **Build Failures**
- Check Node.js version compatibility
- Clear cache and reinstall dependencies
- Verify all environment variables are set

#### **Database Connection Issues**
- Verify MongoDB URI is correct
- Check network access rules
- Confirm database user permissions

#### **CORS Errors**
- Update CORS settings to include production domains
- Verify API URLs in frontend configuration

For more help, refer to the main [README.md](README.md) or create an issue on GitHub.

---

**Happy Deploying! 🚀**
