terraform {
  required_version = "~> 1.0"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

provider "aws" {
  region = "us-east-1"
  alias  = "us-east"
}

resource "random_id" "bucket_suffix" {
  byte_length = 7
}

resource "aws_s3_bucket" "us_east_2" {
  bucket = "some-random-bucket-name-${random_id.bucket_suffix.hex}"
}

resource "aws_s3_bucket" "us_east_1" {
  bucket   = "some-random-bucket-name-${random_id.bucket_suffix.dec}"
  provider = aws.us-east
}