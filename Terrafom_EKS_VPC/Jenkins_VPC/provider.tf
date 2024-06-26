terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"

backend "s3" {
    bucket = "roboshop-remote-state-backend3"
    key    = "roboshop-locking"
    region = "us-east-1"
  }
}


