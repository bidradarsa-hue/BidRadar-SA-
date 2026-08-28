# BidRadar SA - Quick Reference Card

## 🎯 BUSINESS INFORMATION

**Company:** BidRadar SA  
**Owner:** Renaldo  
**Website:** https://bidradarsa-hue.github.io/BidRadar-SA-  
**Repository:** https://github.com/bidradarsa-hue/BidRadar-SA-

---

## 📞 CONTACT INFORMATION

### Main Contact
- **Phone:** +27 67 742 6767
- **Email:** bidradarsa@gmail.com
- **WhatsApp:** +27 67 742 6767

### Admin Contact
- **Email:** admin@bidradarsa.com
- **Purpose:** Account issues, technical support

### Support Hours
- **Monday - Friday:** 08:00 - 17:00 SAST
- **Saturday & Sunday:** Email support only
- **Timezone:** Africa/Johannesburg

---

## 💳 PRICING (South African Rands)

| Plan | Price | Features |
|------|-------|----------|
| Starter | R499/month | 5 alerts, basic reports, email support |
| Professional | R1,999/month | Unlimited alerts, analytics, priority support |
| Enterprise | Custom | Full customization, dedicated support, API |

---

## 🔗 IMPORTANT LINKS

- **Live Website:** https://bidradarsa-hue.github.io/BidRadar-SA-
- **GitHub Repository:** https://github.com/bidradarsa-hue/BidRadar-SA-
- **Backend API:** https://bidradar-sa.herokuapp.com (or your domain)
- **Admin Dashboard:** /admin
- **Contact Page:** /contact.html

---

## 🔐 CREDENTIALS TO SET UP

### PayFast
- [ ] Create merchant account at https://www.payfast.co.za
- [ ] Get Merchant ID
- [ ] Get Merchant Key
- [ ] Get Signature Key
- [ ] Add to .env: `PAYFAST_MERCHANT_ID`, `PAYFAST_MERCHANT_KEY`, `PAYFAST_SIGNATURE_KEY`

### SendGrid
- [ ] Create account at https://sendgrid.com
- [ ] Generate API Key
- [ ] Verify sender email
- [ ] Add to .env: `SENDGRID_API_KEY`, `SENDGRID_FROM_EMAIL`

### MongoDB
- [ ] Create account at https://www.mongodb.com/cloud/atlas
- [ ] Create cluster
- [ ] Get connection string
- [ ] Add to .env: `MONGODB_URI`

### Deployment
- [ ] Option 1: Deploy to Heroku: `git push heroku main`
- [ ] Option 2: Deploy to AWS EC2 with PM2
- [ ] Option 3: Deploy with Docker: `docker-compose up -d`

---

## 📊 FEATURES

### User Features
- ✅ Real-time tender alerts
- ✅ Bid management
- ✅ Market analytics
- ✅ Performance tracking
- ✅ Document uploads

### Admin Features
- ✅ Order management
- ✅ Payment verification
- ✅ Invoice generation
- ✅ Revenue reports
- ✅ User analytics

---

## 🚀 DEPLOYMENT CHECKLIST

### Before Going Live
- [ ] PayFast account created & credentials added
- [ ] SendGrid API key configured
- [ ] MongoDB Atlas cluster created
- [ ] .env file with all credentials
- [ ] Website updated with contact info
- [ ] Backend API deployed
- [ ] SSL/HTTPS enabled
- [ ] Admin dashboard tested
- [ ] Payment flow tested
- [ ] Email notifications tested

### After Deployment
- [ ] Share website link with contacts
- [ ] Start marketing campaign
- [ ] Monitor API logs
- [ ] Track payment transactions
- [ ] Respond to customer inquiries
- [ ] Gather feedback for improvements

---

## 📱 CONTACT DISTRIBUTION

**Share with customers:**
```
📧 Email: bidradarsa@gmail.com
📱 Phone: +27 67 742 6767
🌐 Website: https://bidradarsa-hue.github.io/BidRadar-SA-
⏰ Hours: Mon-Fri 08:00-17:00 SAST
```

---

## 💰 REVENUE MODEL

**Monthly Income Examples:**
- 10 Starter customers × R499 = R4,990
- 5 Professional customers × R1,999 = R9,995
- **Total: ~R15,000/month (conservative estimate)**

---

## 📚 DOCUMENTATION FILES

- `README.md` - Project overview
- `SETUP_GUIDE.md` - Complete setup instructions
- `PROJECT_STRUCTURE.md` - Code organization
- `docs/api.md` - API reference
- `docs/DEPLOYMENT.md` - Production deployment
- `docs/backend-office-guide.md` - Admin manual
- `docs/south-african-payments.md` - Payment methods
- `docs/getting-started.md` - User guide
- `docs/faq.md` - Frequently asked questions

---

## ⚡ QUICK COMMANDS

```bash
# Setup
bash setup-sa.sh

# Development
npm run dev

# Production
npm start

# Deploy to Heroku
git push heroku main

# Deploy with Docker
docker-compose up -d

# View logs
heroku logs --tail
pm2 logs bidradar-sa

# Test API
curl http://localhost:5000/api/health
```

---

## 🎯 NEXT IMMEDIATE ACTIONS

1. **Set up PayFast account** (5 minutes)
2. **Get SendGrid API key** (2 minutes)
3. **Create MongoDB cluster** (5 minutes)
4. **Update .env file** (5 minutes)
5. **Deploy backend** (10 minutes)
6. **Test payment flow** (5 minutes)
7. **Start marketing** (ongoing)

---

## 📞 SUPPORT

**Need help?**
- Call: +27 67 742 6767
- Email: bidradarsa@gmail.com
- WhatsApp: +27 67 742 6767

---

**Status:** ✅ Production Ready  
**Version:** 1.0.0  
**Region:** South Africa  
**Currency:** ZAR (Rands)  
**Last Updated:** 2026-08-28
