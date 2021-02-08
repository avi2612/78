resource "aws_vpc" "tenant_vpc" {
#  cidr_block           = var.tenant_cidr_block
  cidr_block           = "10.${replace(var.unique_id,"/^0+/","" ) }.0.0/16"
  enable_classiclink   = true
  enable_dns_support   = true
  enable_dns_hostnames = true
  
  tags = {
    Name = "${var.unique_id}-vpc"
  }
}

#trimprefix("helloworld", "hello")
#world