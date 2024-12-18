terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    
  }
  backend "s3" {
    bucket = "terraform-s3-bucket-devops"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-db"
  }
}

