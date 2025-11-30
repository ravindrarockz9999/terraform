terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.23.0"
    }
    google = {
      source = "hashicorp/google"
      version = "7.12.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "google" {
  project = "my-gcp-project"
  region  = "asia-south1"
}

# AWS Simple S3 Bucket
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "my-aws-s3-bucket"
}

# GCP Simple Storage Bucket
resource "google_storage_bucket" "gcps_bucket" {
  name     = "my-gcp-gcs-bucket"
  location = "Asia"
}