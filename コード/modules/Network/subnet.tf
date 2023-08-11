#subnet
resource "aws_subnet" "hirota" {
  vpc_id     = aws_vpc.hirota.id
  cidr_block = var.cidr_block_subnet
  availability_zone = "ap-northeast-1a"
  tags = {
    Name = "hirota-tf-${var.tags}-pub-sub-a"
  }
}

