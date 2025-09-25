resource "aws_vpc" "myVPC" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "DemoVPC"
  }
}
