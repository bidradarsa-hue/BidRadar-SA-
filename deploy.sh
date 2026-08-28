#!/bin/bash

# To-Do App Google Cloud Deployment Script
# This script automates the deployment process

set -e

echo "🚀 Starting To-Do App Deployment to Google Cloud Run..."
echo ""

# Check if gcloud is installed
if ! command -v gcloud &> /dev/null; then
    echo "❌ Error: gcloud CLI is not installed"
    echo "📥 Download from: https://cloud.google.com/sdk/docs/install"
    exit 1
fi

# Get project ID
if [ -z "$1" ]; then
    echo "📝 Enter your Google Cloud Project ID:"
    read -r PROJECT_ID
else
    PROJECT_ID=$1
fi

echo "📌 Using Project ID: $PROJECT_ID"
echo ""

# Set project
gcloud config set project "$PROJECT_ID"

# Enable required APIs
echo "⚙️ Enabling Google Cloud APIs..."
gcloud services enable run.googleapis.com
gcloud services enable containerregistry.googleapis.com

echo "✅ APIs enabled"
echo ""

# Build Docker image
echo "🐳 Building Docker image..."
docker build -t gcr.io/"$PROJECT_ID"/todo-app:latest .

echo "✅ Docker image built"
echo ""

# Push to Container Registry
echo "📤 Pushing image to Google Container Registry..."
docker push gcr.io/"$PROJECT_ID"/todo-app:latest

echo "✅ Image pushed"
echo ""

# Deploy to Cloud Run
echo "🚀 Deploying to Cloud Run..."
gcloud run deploy todo-app \
    --image gcr.io/"$PROJECT_ID"/todo-app:latest \
    --platform managed \
    --region us-central1 \
    --allow-unauthenticated \
    --memory 256Mi \
    --cpu 1 \
    --timeout 3600

echo ""
echo "✅ Deployment complete!"
echo ""

# Get service URL
SERVICE_URL=$(gcloud run services describe todo-app --region us-central1 --format='value(status.url)')
echo "🌐 Your To-Do App is live at:"
echo "   $SERVICE_URL"
echo ""
echo "📊 View logs with:"
echo "   gcloud run services logs read todo-app --region us-central1 --limit 50"
echo ""
echo "🎉 Happy task managing!"
