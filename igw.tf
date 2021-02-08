resource "aws_internet_gateway" "tenant_igw" {
  vpc_id = aws_vpc.tenant_vpc.id

  tags = {
    Name = "${var.unique_id}-igw"
  }
}
