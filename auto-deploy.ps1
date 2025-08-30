# DevNovate Blog Platform - Automated Deployment Script
param(
    [string]$GitHubUsername = "",
    [switch]$SkipGitHub = $false
)

Write-Host "🚀 DevNovate Blog Platform - Automated Deployment" -ForegroundColor Cyan
Write-Host "=================================================" -ForegroundColor Cyan

# Set location to project root
Set-Location "C:\projects\project1282"

if (-not $SkipGitHub) {
    # Check if GitHub username provided
    if ($GitHubUsername -eq "") {
        $GitHubUsername = Read-Host "Enter your GitHub username"
    }

    Write-Host "📦 Setting up GitHub repository..." -ForegroundColor Yellow
    
    # Add remote origin
    try {
        git remote add origin "https://github.com/$GitHubUsername/devnovate-blog-platform.git"
        Write-Host "✅ GitHub remote added" -ForegroundColor Green
    } catch {
        Write-Host "ℹ️ Remote might already exist, continuing..." -ForegroundColor Yellow
    }

    # Push to GitHub
    Write-Host "📤 Pushing code to GitHub..." -ForegroundColor Yellow
    git branch -M main
    
    try {
        git push -u origin main
        Write-Host "✅ Code pushed to GitHub successfully!" -ForegroundColor Green
    } catch {
        Write-Host "❌ Failed to push to GitHub. Please ensure:" -ForegroundColor Red
        Write-Host "1. Repository 'devnovate-blog-platform' exists on GitHub" -ForegroundColor White
        Write-Host "2. You have push permissions" -ForegroundColor White
        Write-Host "3. You're logged into Git" -ForegroundColor White
        Write-Host "" -ForegroundColor White
        Write-Host "Create the repository manually at: https://github.com/new" -ForegroundColor Yellow
        Write-Host "Repository name: devnovate-blog-platform" -ForegroundColor Yellow
        pause
        return
    }
}

# Deploy to Vercel
Write-Host "🚀 Deploying frontend to Vercel..." -ForegroundColor Yellow
Set-Location "C:\projects\project1282\frontend"

Write-Host "🔐 Attempting to login to Vercel..." -ForegroundColor Yellow
Write-Host "If login window opens, please authenticate and return here." -ForegroundColor Cyan

# Try to deploy
try {
    Write-Host "🌐 Deploying to Vercel..." -ForegroundColor Yellow
    vercel --prod --confirm --name "devnovate-blog-platform"
    Write-Host "✅ Frontend deployed to Vercel!" -ForegroundColor Green
} catch {
    Write-Host "❌ Vercel deployment failed. Manual steps required:" -ForegroundColor Red
    Write-Host "1. Run: vercel login" -ForegroundColor White
    Write-Host "2. Run: vercel --prod" -ForegroundColor White
    Write-Host "3. Follow the prompts" -ForegroundColor White
}

Write-Host "" -ForegroundColor White
Write-Host "🎯 NEXT STEPS:" -ForegroundColor Cyan
Write-Host "=============" -ForegroundColor Cyan
Write-Host "1. 📱 Deploy Backend to Render:" -ForegroundColor Yellow
Write-Host "   → Go to https://render.com" -ForegroundColor White
Write-Host "   → Create Web Service from your GitHub repo" -ForegroundColor White
Write-Host "   → Use 'backend' as root directory" -ForegroundColor White
Write-Host "   → Copy environment variables from QUICK_DEPLOY.md" -ForegroundColor White
Write-Host "" -ForegroundColor White
Write-Host "2. 🔄 Update CORS settings:" -ForegroundColor Yellow
Write-Host "   → Update FRONTEND_URL in Render with your Vercel URL" -ForegroundColor White
Write-Host "   → Redeploy backend" -ForegroundColor White
Write-Host "" -ForegroundColor White
Write-Host "3. ✅ Test your deployment:" -ForegroundColor Yellow
Write-Host "   → Visit your Vercel URL" -ForegroundColor White
Write-Host "   → Test backend health endpoint" -ForegroundColor White
Write-Host "" -ForegroundColor White

Write-Host "📋 All configuration files and guides are ready!" -ForegroundColor Green
Write-Host "See QUICK_DEPLOY.md for detailed instructions" -ForegroundColor Green
