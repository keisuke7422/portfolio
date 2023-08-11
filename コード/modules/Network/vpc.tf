#vpc
resource "aws_vpc" "hirota" {
  cidr_block      = var.cidr_block_vpc

  tags = {
    Name = "hirota-tf-${var.tags}-vpc"
  }
}

