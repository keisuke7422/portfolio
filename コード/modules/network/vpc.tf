#vpc
resource "aws_vpc" "xxx" {
  cidr_block      = var.cidr_block_vpc
  instance_tenancy = "default"

  tags = {
    Name = "xxx-tf-${var.tags}-vpc"
  }
}

