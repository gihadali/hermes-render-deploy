
# 🚀 MANUAL SERVICE RECREATE INSTRUCTIONS
# Created: 2026-05-23 19:11:41

## THE PROBLEM:
Render is caching the OLD Dockerfile (with npm ci).
The fix on GitHub is correct, but Render won't pick it up.

## THE SOLUTION:
Create a NEW service so Render builds from scratch.

## STEPS:

### 1. Delete the OLD Service
   a. Go to: https://dashboard.render.com
   b. Find: "hermes-gateway"
   c. Click: "Settings" tab
   d. Scroll to bottom
   e. Click: "Danger Zone"
   f. Type "hermes-gateway" to confirm
   g. Click: "Delete Service"

### 2. Create NEW Service
   a. Click: "New +"
   b. Select: "Web Service"
   c. Connect: GitHub account (if not already)
   d. Select repository: "gihadali/hermes-render-deploy"
   
   e. Configure:
      - Name: hermes-gateway
      - Environment: Docker
      - Region: Choose any (e.g., Oregon)
      - Branch: main
      
   f. Click: "Advanced"
      - Dockerfile path: Dockerfile
      - Start command: (leave blank)
      
   g. Click: "Environment Variables"
      Add these 3 variables:
      
      KEY: TELEGRAM_BOT_TOKEN
      VALUE: 8747968818:AAGHIqvSaCq2dqnkEIVUZtuewkr-z417hwk
      
      KEY: TELEGRAM_ALLOWED_USERS
      VALUE: 6398958474
      
      KEY: HERMES_TELEGRAM_PROFILE
      VALUE: cloud
      
   h. Click: "Create Web Service"

### 3. Wait for Build (3-5 minutes)
   Watch the build logs. You should see:
   ✅ Installing system dependencies
   ✅ Downloading Hermes CLI from GitHub
   ✅ npm install --omit=dev
   ✅ Building Docker image
   ✅ Starting Hermes gateway on port 9119

### 4. Verify
   Status should show "Running"
   Check logs for "Service running"

### 5. Test
   Open Telegram
   Message: @TonDark_bot
   Send: /reset
   ✅ Tony responds!

## FILES READY ON GITHUB:
Repository: gihadali/hermes-render-deploy
Branch: main
Dockerfile: Contains 'npm install' (FIXED!)
Last commit: 2026-05-23 19:11:41

## WHY THIS WORKS:
- New service = fresh Docker build
- No caching issues
- Uses current Dockerfile from main branch

## IF BUILD FAILS:
Check the logs and share the error with me.
I'll fix whatever issue comes up.
