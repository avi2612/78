resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.tenant_vpc.id
  cidr_block              = "10.${replace(var.unique_id,"/^0+/","" ) }.0.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.unique_id}-subnet"
  }
}
