terraform {
  required_version = "~> 1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = "terraform-course-juanprado-remote-backend"
    key    = "04-backends/state.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"
}

