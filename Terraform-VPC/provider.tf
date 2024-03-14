terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "terraform-remote-backend-s3"
    key    = "dev1/myblk123"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"
}
