# 🚀 MANUAL RENDER REBUILD INSTRUCTIONS

## Why This Is Happening:
Render's GitHub webhook is not detecting your commits automatically.

## Solution - Force Rebuild Manually:

### Option 1: Restart the Service (Fastest)
1. Go to: https://dashboard.render.com
2. Find: "hermes-gateway" service
3. Click "Manual Deploy"
4. Choose "Deploy latest commit from main branch"
5. Click "Deploy"

### Option 2: Delete and Recreate Service
If Option 1 doesn't work:

1. Go to: https://dashboard.render.com
2. Delete the "hermes-gateway" service
3. Click "New +" → "Web Service"
4. Connect GitHub account
5. Select: "gihadali/hermes-render-deploy"
6. Configure:
   - Name: hermes-gateway
   - Environment: Docker
   - Region: Choose any
7. Add Environment Variables:
   - TELEGRAM_BOT_TOKEN=8747968818:AAGHIqvSaCq2dqnkEIVUZtuewkr-z417hwk
   - TELEGRAM_ALLOWED_USERS=6398958474
   - HERMES_TELEGRAM_PROFILE=cloud
8. Click "Create Web Service"

## Expected Build Output:
- ✅ Install system dependencies
- ✅ Download Hermes CLI from GitHub
- ✅ Install npm dependencies (npm install)
- ✅ Build Docker image
- ✅ Start Hermes gateway on port 9119
- ✅ Service running!

## After Build:
1. Check logs for "Service running"
2. Test @TonDark_bot on Telegram
3. Send /reset
4. Tony should respond! ✅

## Files Updated:
- ✅ Dockerfile (uses npm install, not npm ci)
- ✅ Added timestamp to force rebuild detection
- ✅ Fixed Hermes CLI download URL

## Monitor Build:
https://dashboard.render.com/services

Watch the "Deployments" tab for new build!
