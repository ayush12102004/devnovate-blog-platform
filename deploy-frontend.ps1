# DevNovate Blog Platform - Frontend Deployment Script
# This script deploys the React frontend to Vercel

Write-Host "🚀 DevNovate Blog Platform - Frontend Deployment" -ForegroundColor Cyan
Write-Host "=============================================" -ForegroundColor Cyan

# Navigate to frontend directory
Set-Location "C:\projects\project1282\frontend"
Write-Host "📁 Navigated to frontend directory" -ForegroundColor Green

# Check if we're logged into Vercel
Write-Host "🔐 Checking Vercel authentication..." -ForegroundColor Yellow
try {
    $vercelUser = vercel whoami 2>$null
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ Already logged into Vercel as: $vercelUser" -ForegroundColor Green
    } else {
        throw "Not logged in"
    }
} catch {
    Write-Host "❌ Not logged into Vercel. Please login first:" -ForegroundColor Red
    Write-Host "Run: vercel login" -ForegroundColor Yellow
    exit 1
}

# Build the application
Write-Host "🔨 Building React application for production..." -ForegroundColor Yellow
npm run build

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Build failed! Please check the errors above." -ForegroundColor Red
    exit 1
}

Write-Host "✅ Build completed successfully!" -ForegroundColor Green

# Deploy to Vercel
Write-Host "🚀 Deploying to Vercel..." -ForegroundColor Yellow
vercel --prod

if ($LASTEXITCODE -eq 0) {
    Write-Host "🎉 Frontend deployed successfully!" -ForegroundColor Green
    Write-Host "📝 Next steps:" -ForegroundColor Cyan
    Write-Host "1. Note your Vercel URL from the output above" -ForegroundColor White
    Write-Host "2. Update your Render backend environment variables with this URL" -ForegroundColor White
    Write-Host "3. Redeploy your backend on Render" -ForegroundColor White
} else {
    Write-Host "❌ Deployment failed! Please check the errors above." -ForegroundColor Red
    exit 1
}
