# Elastic IPs for NAT Gateways
resource "aws_eip" "nat_eip" {
  count  = length(var.public_subnets)
  domain = "vpc"
}

# NAT Gateways (one per public subnet)
resource "aws_nat_gateway" "nat" {
  count         = length(var.public_subnets)
  allocation_id = aws_eip.nat_eip[count.index].id
  subnet_id     = aws_subnet.public[count.index].id

  tags = {
    Name = "NAT-${count.index + 1}"
  }

  depends_on = [aws_internet_gateway.igw]
}
