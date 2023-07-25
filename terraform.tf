terraform {
  backend "s3" {
    bucket = "infrastructure-aws-ecs-ec2-rds"
    key    = "terraform.tfstate"
    region  = "us-east-1"
  }

  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.72.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
}
