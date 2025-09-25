# AWS Infrastructure with Terraform

This project creates basic AWS infrastructure using Terraform, including:

- VPC with CIDR block 10.0.0.0/16
- Public subnet in ap-south-1a availability zone
- Internet Gateway
- Public Route Table

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS CLI configured with appropriate credentials
- AWS account with necessary permissions

## Usage

1. Clone this repository
2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Review the planned changes:
   ```bash
   terraform plan
   ```

4. Apply the configuration:
   ```bash
   terraform apply
   ```

5. To destroy the infrastructure:
   ```bash
   terraform destroy
   ```

## Configuration

- AWS Region: ap-south-1 (configured in providers.tf)
- VPC CIDR: 10.0.0.0/16
- Subnet CIDR: 10.0.0.0/24

## Files

- `main.tf` - Main infrastructure configuration
- `providers.tf` - Provider configuration
- `.gitignore` - Git ignore file for Terraform projects

## Notes

Make sure to configure your AWS credentials before running Terraform commands.
