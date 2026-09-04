# Terraform configuration for S3 + CloudFront deployment

provider "aws" {
  region = "ap-south-1"
}

# S3 Bucket (Private)
resource "aws_s3_bucket" "portfolio_bucket" {
  bucket = "chetana-portfolio-2026"
}

# Block public access (Private bucket)
resource "aws_s3_bucket_public_access_block" "block_public" {
  bucket = aws_s3_bucket.portfolio_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Upload static files
resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.portfolio_bucket.id
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html"
  etag         = filemd5("index.html")
}

resource "aws_s3_object" "style_css" {
  bucket       = aws_s3_bucket.portfolio_bucket.id
  key          = "style.css"
  source       = "style.css"
  content_type = "text/css"
  etag         = filemd5("style.css")
}

resource "aws_s3_object" "script_js" {
  bucket       = aws_s3_bucket.portfolio_bucket.id
  key          = "script.js"
  source       = "script.js"
  content_type = "application/javascript"
  etag         = filemd5("script.js")
}

resource "aws_s3_object" "photo" {
  bucket       = aws_s3_bucket.portfolio_bucket.id
  key          = "my-photo.jpg.png"
  source       = "my-photo.jpg.png"
  content_type = "image/png"
  etag         = filemd5("my-photo.jpg.png")
}