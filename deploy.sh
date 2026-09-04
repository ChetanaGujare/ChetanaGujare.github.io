#!/bin/bash

# AWS S3 Deployment Script
# This script syncs the local portfolio files to the S3 bucket

BUCKET_NAME="chetana-portfolio-2026"
REGION="ap-south-1"

echo "🚀 Starting deployment to S3 bucket: $BUCKET_NAME"

# Step 1: Sync files to S3
aws s3 sync . s3://$BUCKET_NAME \
    --region $REGION \
    --exclude ".git/*" \
    --exclude "*.tf" \
    --exclude "*.sh" \
    --exclude "README.md" \
    --exclude ".gitignore"

echo "✅ Files uploaded successfully!"
echo "🌐 Website URL: https://$BUCKET_NAME.s3-website-$REGION.amazonaws.com"