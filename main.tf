resource "aws_vpc" "myVPC" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "DemoVPC"
    }
}

resource "aws_subnet" "publicSubnet1" {
    cidr_block = "10.0.0.0/24"
    vpc_id = aws_vpc.myVPC.id
    availability_zone = "us-east-1a"
    tags = {
        Name = "PublicSubnet1"
    }
}

resource "aws_route_table" "publicRouteTable" {
    vpc_id = aws_vpc.myVPC.id
    tags = {
        Name = "PublicRouteTable"
    }
}
resource "aws_internet_gateway" "internetGateway" {
    vpc_id = aws_vpc.myVPC.id
    tags = {
        Name = "Demo_IGW"
    }
}

