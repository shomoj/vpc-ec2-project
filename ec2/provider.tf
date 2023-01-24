terraform {
  required_version = "~> 1.0" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Provider block
provider "aws" {
  region = "us-east-1"
  profile = "sholade1"
}

#Backend storage
backend "s3" {
    bucket = "bootcamp29-1-shola"
    key = "global/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    region = "us-east-1"
  }
  
