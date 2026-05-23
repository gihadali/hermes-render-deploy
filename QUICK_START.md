# 🚀 QUICK RENDER DEPLOYMENT GUIDE

## ✅ YOUR FILES ARE READY

**Location:** `/Users/gali/Desktop/hermes-render-deploy/`

**Files Created:**
- ✅ Dockerfile
- ✅ package.json  
- ✅ render.yaml
- ✅ .gitignore
- ✅ DEPLOYMENT_GUIDE.md (full instructions)

---

## 📋 DEPLOY IN 5 STEPS

### **STEP 1: Go to Render**
```
https://render.com
```

### **STEP 2: Sign Up/Login**
- Use **GitHub** (easiest)
- Free tier available (no credit card needed)

### **STEP 3: Create Web Service**
1. Click **"New +"** → **"Web Service"**
2. Connect GitHub account
3. Select: `gihadali/hermes-railway-deploy`
4. Configure:
   - **Name:** hermes-gateway
   - **Environment:** Docker
   - **Branch:** main
   - **Root Directory:** `/` (or leave default)

### **STEP 4: Add Environment Variables**
In Render dashboard → **"Environment"** tab:

**Copy-paste these EXACTLY:**

```
TELEGRAM_BOT_TOKEN=8747968818:AAGHIqvSaCq2dqnkEIVUZtuewkr-z417hwk
TELEGRAM_ALLOWED_USERS=6398958474
HERMES_TELEGRAM_PROFILE=cloud
```

*(If you have OpenRouter/CherryIn keys, add them too)*

### **STEP 5: Deploy & Test**
1. Click **"Create Web Service"**
2. Wait ~3-5 minutes (build will show progress)
3. Open Telegram
4. Message @TonDark_bot
5. Send `/reset`
6. Tony responds! ✅

---

## 💰 RENDER FREE TIER

- ✅ **500 hours/month** (enough for testing)
- ✅ **512 MB RAM**
- ✅ **Auto-sleep** after 15 min inactive
- ✅ **No credit card** required

**Perfect for your use case!**

---

## ✅ SUCCESS CHECKLIST

- [ ] Render account created
- [ ] Repository selected
- [ ] Environment variables added
- [ ] Build completed (green checkmark)
- [ ] @TonDark_bot responds
- [ ] Tony personality active

---

## 🎯 WHAT YOU GET

- ✅ **24/7 Cloud Tony** (Render)
- ✅ **Local Mac Tony** (when Mac ON)
- ✅ **Same personality everywhere**
- ✅ **Seamless switching**
- ✅ **$0 cost** (free tier)

---

## 📖 FULL GUIDE

See: `DEPLOYMENT_GUIDE.md` for detailed instructions, troubleshooting, and monitoring.

---

**Ready to deploy?**

**Just follow the 5 steps above!**

**I'm standing by, Sir!** Ready to verify once you're done! 🚀
