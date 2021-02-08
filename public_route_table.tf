resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.tenant_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tenant_igw.id
  }

  tags = {
    Name = var.public_route_name
  }
}

resource "aws_route_table_association" "public_route_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route.id
}


variable "public_route_name" {
  default = "public_route"
}