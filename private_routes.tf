# Single Private Route Table
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.myVPC.id
  tags = {
    Name = "PrivateRouteTable"
  }
}

# Route to Internet via NAT Gateway
resource "aws_route" "private_nat_gateway" {
  route_table_id          = aws_route_table.private.id
  destination_cidr_block  = "0.0.0.0/0"
  nat_gateway_id          = aws_nat_gateway.nat.id
}
