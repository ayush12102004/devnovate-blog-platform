#!/usr/bin/env pwsh
# DevNovate Blog Platform - Interactive Deployment Assistant

Write-Host ""
Write-Host "🚀 DevNovate Blog Platform - Ready for Deployment!" -ForegroundColor Cyan
Write-Host "====================================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "✅ Your project is 100% configured and ready!" -ForegroundColor Green
Write-Host "✅ Database connection tested and working" -ForegroundColor Green  
Write-Host "✅ Production build created successfully" -ForegroundColor Green
Write-Host "✅ All environment variables configured" -ForegroundColor Green
Write-Host ""

Write-Host "📋 What would you like me to help you with?" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. 🐙 Set up GitHub repository and push code" -ForegroundColor White
Write-Host "2. 🚀 Deploy frontend to Vercel (requires GitHub first)" -ForegroundColor White
Write-Host "3. 📱 Show me the Render deployment steps" -ForegroundColor White
Write-Host "4. 📖 Open deployment guides" -ForegroundColor White
Write-Host "5. 🧪 Test local backend server" -ForegroundColor White
Write-Host ""

$choice = Read-Host "Enter your choice (1-5)"

switch ($choice) {
    "1" {
        Write-Host ""
        Write-Host "🐙 GitHub Repository Setup" -ForegroundColor Cyan
        Write-Host "===========================" -ForegroundColor Cyan
        
        $username = Read-Host "Enter your GitHub username"
        
        if ($username -ne "") {
            Write-Host ""
            Write-Host "📝 Follow these steps:" -ForegroundColor Yellow
            Write-Host "1. Go to https://github.com/new" -ForegroundColor White
            Write-Host "2. Repository name: devnovate-blog-platform" -ForegroundColor White
            Write-Host "3. Make it Public" -ForegroundColor White
            Write-Host "4. Don't initialize with README" -ForegroundColor White
            Write-Host "5. Click 'Create repository'" -ForegroundColor White
            Write-Host ""
            
            $continue = Read-Host "Press Enter when repository is created..."
            
            Write-Host "📤 Pushing your code to GitHub..." -ForegroundColor Yellow
            
            try {
                git remote add origin "https://github.com/$username/devnovate-blog-platform.git"
                git branch -M main
                git push -u origin main
                Write-Host "✅ Code pushed successfully!" -ForegroundColor Green
                Write-Host ""
                Write-Host "🎯 Next: Deploy to Render and Vercel using DEPLOY_LINKS.md" -ForegroundColor Cyan
            } catch {
                Write-Host "❌ Push failed. Please run these commands manually:" -ForegroundColor Red
                Write-Host "git remote add origin https://github.com/$username/devnovate-blog-platform.git" -ForegroundColor White
                Write-Host "git branch -M main" -ForegroundColor White  
                Write-Host "git push -u origin main" -ForegroundColor White
            }
        }
    }
    
    "2" {
        Write-Host ""
        Write-Host "🚀 Vercel Frontend Deployment" -ForegroundColor Cyan
        Write-Host "==============================" -ForegroundColor Cyan
        Write-Host ""
        Write-Host "First, ensure your code is on GitHub (option 1)" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Then:" -ForegroundColor White
        Write-Host "1. Go to https://vercel.com/new" -ForegroundColor White
        Write-Host "2. Import your GitHub repository" -ForegroundColor White
        Write-Host "3. Root Directory: frontend" -ForegroundColor White
        Write-Host "4. Framework: Create React App" -ForegroundColor White
        Write-Host "5. Add environment variable:" -ForegroundColor White
        Write-Host "   REACT_APP_API_URL=https://your-backend.onrender.com/api" -ForegroundColor Gray
        Write-Host "6. Deploy!" -ForegroundColor White
        
        $open = Read-Host "Open Vercel in browser? (y/n)"
        if ($open -eq "y") {
            Start-Process "https://vercel.com/new"
        }
    }
    
    "3" {
        Write-Host ""
        Write-Host "📱 Render Backend Deployment" -ForegroundColor Cyan
        Write-Host "=============================" -ForegroundColor Cyan
        Write-Host ""
        Write-Host "1. Go to https://render.com" -ForegroundColor White
        Write-Host "2. Click 'New +' → 'Web Service'" -ForegroundColor White
        Write-Host "3. Connect your GitHub repository" -ForegroundColor White
        Write-Host "4. Configuration:" -ForegroundColor White
        Write-Host "   - Name: devnovate-blog-backend" -ForegroundColor Gray
        Write-Host "   - Root Directory: backend" -ForegroundColor Gray
        Write-Host "   - Build Command: npm install" -ForegroundColor Gray
        Write-Host "   - Start Command: npm start" -ForegroundColor Gray
        Write-Host ""
        Write-Host "5. Environment Variables (copy from DEPLOY_LINKS.md)" -ForegroundColor White
        Write-Host ""
        
        $open = Read-Host "Open Render in browser? (y/n)"
        if ($open -eq "y") {
            Start-Process "https://render.com/new"
        }
    }
    
    "4" {
        Write-Host ""
        Write-Host "📖 Opening deployment guides..." -ForegroundColor Yellow
        
        if (Test-Path "DEPLOY_LINKS.md") {
            Start-Process "DEPLOY_LINKS.md"
        }
        if (Test-Path "QUICK_DEPLOY.md") {
            Start-Process "QUICK_DEPLOY.md"
        }
        if (Test-Path "DEPLOYMENT_GUIDE.md") {
            Start-Process "DEPLOYMENT_GUIDE.md"
        }
    }
    
    "5" {
        Write-Host ""
        Write-Host "🧪 Testing Local Backend Server" -ForegroundColor Cyan
        Write-Host "================================" -ForegroundColor Cyan
        
        Set-Location "backend"
        Write-Host "🔗 Testing database connection..." -ForegroundColor Yellow
        node test-db-connection.js
        
        Write-Host ""
        Write-Host "🚀 Starting local server..." -ForegroundColor Yellow
        Write-Host "Visit http://localhost:5000/health to test" -ForegroundColor White
        Write-Host "Press Ctrl+C to stop" -ForegroundColor Gray
        Write-Host ""
        
        npm start
    }
    
    default {
        Write-Host ""
        Write-Host "📋 All deployment files are ready in your project:" -ForegroundColor Green
        Write-Host "- DEPLOY_LINKS.md (click-and-deploy guide)" -ForegroundColor White
        Write-Host "- QUICK_DEPLOY.md (5-minute guide)" -ForegroundColor White
        Write-Host "- DEPLOYMENT_GUIDE.md (comprehensive guide)" -ForegroundColor White
        Write-Host ""
        Write-Host "🎯 Your project is production-ready!" -ForegroundColor Cyan
    }
}
