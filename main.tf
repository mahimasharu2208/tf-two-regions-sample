terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "use1"
}

provider "aws" {
  region = "us-west-2"
  alias  = "usw2"
}

resource "aws_s3_bucket" "use1_bucket" {
  provider = aws.use1
  bucket   = var.bucket_name_use1
  force_destroy = true
}

resource "aws_s3_bucket" "usw2_bucket" {
  provider = aws.usw2
  bucket   = var.bucket_name_usw2
  force_destroy = true
}
