# 🚀 RENDER DEPLOYMENT GUIDE

## ✅ YOUR FILES ARE READY

**Location:** `/Users/gali/Desktop/hermes-render-deploy/`

**Files Created:**
- ✅ Dockerfile (container config)
- ✅ package.json (dependencies)
- ✅ render.yaml (Render service config)
- ✅ .gitignore

---

## 📋 DEPLOYMENT STEPS (5 MINUTES)

### **STEP 1: Go to Render**
1. Open: **https://render.com**
2. Sign up/Login with GitHub

### **STEP 2: Create Account (Free Tier)**
- ✅ **Free Web Service** available
- ✅ **500 hours/month** (enough for testing)
- ✅ No credit card needed

### **STEP 3: Deploy as Web Service**
1. Click **"New +"** → **"Web Service"**
2. Connect your GitHub account
3. Select repository: `gihadali/hermes-railway-deploy`
4. Configure:
   - **Name:** hermes-gateway
   - **Environment:** Docker
   - **Region:** Choose closest to you
   - **Branch:** main

### **STEP 4: Add Environment Variables**
In Render dashboard → **"Environment"** tab:

**Copy-paste these EXACTLY:**

```
TELEGRAM_BOT_TOKEN=8747968818:AAGHIqvSaCq2dqnkEIVUZtuewkr-z417hwk
TELEGRAM_ALLOWED_USERS=6398958474
HERMES_TELEGRAM_PROFILE=cloud
OPENROUTER_API_KEY=sk-or-...8ebf     # Your actual key
CHERRYIN_API_KEY=sk-uZZ...6FvW       # Your actual key
```

### **STEP 5: Deploy**
1. Click **"Create Web Service"**
2. Wait for build (~3-5 minutes)
3. Render will provide a URL (e.g., `https://hermes-gateway.onrender.com`)

### **STEP 6: Test**
1. Open Telegram
2. Message @TonDark_bot
3. Send `/reset`
4. Tony responds! ✅

---

## 💰 RENDER FREE TIER

- ✅ **Free Web Service:** 500 hours/month
- ✅ **512 MB RAM**
- ✅ **Shared CPU**
- ✅ **Auto-sleep after 15 min inactive**
- ✅ **No credit card required**

**Perfect for your use case!**

---

## ✅ SUCCESS CHECKLIST

- [ ] Render account created
- [ ] Repository selected
- [ ] Environment variables added
- [ ] Build completed (no errors)
- [ ] @TonDark_bot responds on Telegram
- [ ] Tony personality is active

---

## 🎯 NEXT STEPS AFTER DEPLOYMENT

1. **Test the bot** on Telegram
2. **Verify Tony responds** correctly
3. **Set up Honcho memory** (optional - for sync with local Mac)
4. **Monitor usage** in Render dashboard

---

## 📊 RENDER VS RAILWAY

| Feature | Render | Railway |
|---------|--------|---------|
| Free Tier | ✅ 500 hrs/month | ✅ $5 credit |
| Build Time | 3-5 min | 2-3 min |
| Ease of Use | Very Easy | Easy |
| Community | Large | Growing |
| Documentation | Excellent | Good |

**Both are excellent! Render is more beginner-friendly.**

---

## 🎉 READY TO DEPLOY!

**Follow the 6 steps above!**

Questions? I'm here to help, Sir!

