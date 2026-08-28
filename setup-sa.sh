#!/bin/bash

# BidRadar SA - Environment Setup Script for South Africa

echo "🇿🇦 BidRadar SA - South African Configuration Setup"
echo "=================================================="

# Create .env file
cat > .env << EOF
# Server Configuration
PORT=5000
NODE_ENV=development
API_URL=http://localhost:5000

# Database
MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/bidradar-sa
DB_NAME=bidradar-sa

# JWT Authentication
JWT_SECRET=$(openssl rand -base64 32)
JWT_EXPIRES_IN=7d

# PayFast Configuration (South African Payment Gateway)
PAYFAST_MERCHANT_ID=10000100
PAYFAST_MERCHANT_KEY=46f1db3175menb51
PAYFAST_SIGNATURE_KEY=p4v4lh06go7eoe77
PAYFAST_MODE=sandbox

# SendGrid Email Service
SENDGRID_API_KEY=SG.your_sendgrid_api_key
SENDGRID_FROM_EMAIL=noreply@bidradarsa.com
SENDGRID_FROM_NAME=BidRadar SA

# South African Bank Account Details
BANK_ACCOUNT_NAME=BidRadar SA Procurement (Pty) Ltd
BANK_ACCOUNT_NUMBER=123456789
BANK_NAME=Standard Bank
BANK_CODE=051001
SWIFT_CODE=SBZAZAJJ

# Frontend Configuration
FRONTEND_URL=https://bidradarsa-hue.github.io/BidRadar-SA-

# Admin Email
ADMIN_EMAIL=admin@bidradarsa.com

# Currency & Localization
CURRENCY=ZAR
CURRENCY_SYMBOL=R
LANGUAGE=en_ZA
TIMEZONE=Africa/Johannesburg
VAT_RATE=0.15

# Tax Information
COMPANY_TAX_ID=9999999999999
COMPANY_VAT_NUMBER=4999999999
COMPANY_REGISTRATION_NUMBER=2024/999999/99
EOF

echo "✅ .env file created"

# Install dependencies
echo "📦 Installing dependencies..."
npm install

echo ""
echo "🎉 Setup Complete!"
echo ""
echo "Next steps:"
echo "1. Edit .env with your actual credentials:"
echo "   - MONGODB_URI (get from MongoDB Atlas)"
echo "   - SENDGRID_API_KEY (get from SendGrid)"
echo "   - PAYFAST credentials (get from PayFast)"
echo "   - Bank account details"
echo ""
echo "2. Start the server:"
echo "   npm run dev"
echo ""
echo "3. Access admin dashboard:"
echo "   http://localhost:5000/admin"
echo ""
echo "📚 Documentation: docs/backend-office-guide.md"
echo "💳 Payment Setup: docs/south-african-payments.md"
echo ""
