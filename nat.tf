# Elastic IPs for NAT Gateways
# Elastic IP for NAT Gateway
resource "aws_eip" "nat_eip" {
  domain = "vpc"
}

# Single NAT Gateway in first Public Subnet
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public[0].id

  tags = {
    Name = "Demo-NAT-GW"
  }

  depends_on = [aws_internet_gateway.igw]
}
