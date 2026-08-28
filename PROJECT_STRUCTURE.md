# BidRadar SA - Complete Project Structure

## 🎯 Project Overview

**BidRadar SA** is a comprehensive procurement intelligence platform designed for South African businesses to discover, analyze, and manage government and private sector tenders.

**Live Website:** https://bidradarsa-hue.github.io/BidRadar-SA-

## 📁 Directory Structure

```
BidRadar-SA/
├── docs/                          # Documentation
│   ├── getting-started.md         # User onboarding guide
│   ├── faq.md                     # Frequently asked questions
│   ├── privacy.md                 # Privacy policy (POPIA compliant)
│   ├── terms.md                   # Terms of service
│   ├── api.md                     # API reference documentation
│   ├── DEPLOYMENT.md              # Production deployment guide
│   ├── backend-office-guide.md    # Admin office management
│   └── south-african-payments.md  # Payment methods guide
│
├── models/                        # Database models (MongoDB)
│   ├── User.js                    # User account model
│   ├── Bid.js                     # Bid management model
│   └── Tender.js                  # Tender opportunities model
│
├── routes/                        # API endpoints
│   ├── auth.js                    # Authentication (register, login, verify)
│   ├── users.js                   # User profile management
│   ├── bids.js                    # Bid CRUD operations
│   ├── tenders.js                 # Tender search & discovery
│   ├── payments.js                # Stripe payment processing (old)
│   ├── payments-sa.js             # PayFast & EFT (South African)
│   ├── admin.js                   # Backend office admin routes
│   ├── analytics.js               # User analytics & dashboard
│   └── emails.js                  # Contact form & newsletters
│
├── services/                      # Business logic services
│   ├── emailService.js            # SendGrid email integration
│   └── emailServiceSA.js          # South African email templates
│
├── middleware/                    # Express middleware
│   └── auth.js                    # JWT authentication middleware
│
├── utils/                         # Utility functions
│   └── validators.js              # Input validation helpers
│
├── Frontend (GitHub Pages)
│   ├── index.html                 # Landing page
│   ├── styles.css                 # Responsive styling
│   └── script.js                  # Frontend interactivity
│
├── server.js                      # Express server entry point
├── package.json                   # Node dependencies
├── package-lock.json              # Dependency lock file
├── .env.example                   # Environment variables template
├── setup-sa.sh                    # South African setup script
├── Dockerfile                     # Docker container config
├── docker-compose.yml             # Multi-container orchestration
├── .gitignore                     # Git ignore rules
├── README.md                      # Project overview
└── LICENSE                        # MIT License

```

## 🚀 Quick Start

### 1. **Frontend (Live Now)**
- Visit: https://bidradarsa-hue.github.io/BidRadar-SA-
- Static website built with HTML, CSS, JavaScript
- GitHub Pages hosting (free, automatic HTTPS)

### 2. **Backend Setup**
```bash
bash setup-sa.sh
npm run dev
```

### 3. **Admin Dashboard**
http://localhost:5000/admin

## 🔐 Payment Processing

### Supported Methods (South Africa)
1. **PayFast** - Credit cards, debit cards, EFT
2. **Bank Transfer (EFT)** - Direct deposit
3. **Invoice** - For business clients

### Pricing (ZAR)
- **Starter:** R499/month
- **Professional:** R1,999/month
- **Enterprise:** Custom

## 📊 Key Features

### For Users
- ✅ Real-time tender alerts
- ✅ Bid management system
- ✅ Market analytics
- ✅ Performance tracking
- ✅ Document uploads

### For Admin
- ✅ Order management
- ✅ Payment verification
- ✅ Invoice generation
- ✅ Revenue reports
- ✅ User analytics

## 🛠 Technology Stack

### Frontend
- HTML5, CSS3, JavaScript (Vanilla)
- GitHub Pages hosting
- Responsive design

### Backend
- **Runtime:** Node.js 18+
- **Framework:** Express.js
- **Database:** MongoDB
- **Authentication:** JWT tokens
- **Payments:** PayFast (South Africa)
- **Email:** SendGrid
- **Deployment:** Docker, Heroku, AWS EC2

### DevOps
- Docker & Docker Compose
- PM2 process management
- Nginx reverse proxy
- SSL/TLS with Let's Encrypt
- GitHub Actions (CI/CD ready)

## 📈 API Endpoints

### Authentication
- `POST /api/auth/register` - Create account
- `POST /api/auth/login` - Login
- `GET /api/auth/verify/:token` - Email verification

### Tenders
- `GET /api/tenders` - List all tenders
- `GET /api/tenders/:id` - Get tender details
- `GET /api/tenders/search` - Search tenders

### Bids
- `POST /api/bids` - Create bid
- `GET /api/bids` - Get user's bids
- `PUT /api/bids/:id` - Update bid
- `DELETE /api/bids/:id` - Delete bid

### Payments (SA)
- `POST /api/payfast/checkout` - PayFast payment
- `POST /api/eft-payment` - EFT payment
- `GET /api/payments/plans` - Get plans

### Admin
- `GET /api/admin/dashboard` - Dashboard stats
- `GET /api/admin/orders` - All orders
- `PUT /api/admin/orders/:id/status` - Update status
- `POST /api/admin/orders/:id/verify-eft` - Verify EFT

## 🌍 Compliance

### South African
- ✅ POPIA (Protection of Personal Information Act)
- ✅ VAT calculations (15%)
- ✅ Tax invoice templates
- ✅ Rand (ZAR) pricing
- ✅ Local payment methods
- ✅ Africa/Johannesburg timezone

### International
- ✅ GDPR compliant
- ✅ SOC 2 ready
- ✅ Security headers (Helmet.js)
- ✅ Rate limiting
- ✅ HTTPS/TLS encryption

## 📞 Support & Contact

**Business:** bidradarsa@gmail.com
**Admin:** admin@bidradarsa.com
**Hours:** Monday-Friday, 08:00-17:00 SAST

## 📝 License

MIT License - See LICENSE file

## 🎯 Roadmap

- [ ] Mobile app (React Native)
- [ ] Advanced AI-powered tender matching
- [ ] Supplier directory integration
- [ ] Luno cryptocurrency payments
- [ ] Multi-language support
- [ ] Custom reporting engine
- [ ] Tender value forecasting

---

**Status:** ✅ Production Ready
**Last Updated:** 2026-08-28
**Version:** 1.0.0
**Region:** South Africa
**Currency:** ZAR (South African Rands)
