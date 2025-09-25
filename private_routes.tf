# Private Route Tables (one per private subnet)
resource "aws_route_table" "private" {
  count  = length(aws_subnet.private)
  vpc_id = aws_vpc.myVPC.id

  tags = {
    Name = "PrivateRouteTable-${count.index + 1}"
  }
}

# Private Routes (via NAT Gateway)
resource "aws_route" "private_nat_gateway" {
  count                  = length(aws_subnet.private)
  route_table_id         = aws_route_table.private[count.index].id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat[count.index].id
}
