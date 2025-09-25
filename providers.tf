terraform {
    required_providers {
        aws = {
           source = "hashicorp/aws"
           version = "5.80.0"
        }
    }
}

provider "aws" {
    region = "ap-south-1"
    # Credentials will be loaded from:
    # 1. AWS CLI configuration (~/.aws/credentials)
    # 2. Environment variables (AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY)
    # 3. IAM roles (if running on EC2)
}