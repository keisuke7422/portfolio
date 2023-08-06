#subnet
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.xxx.id
  cidr_block = var.cidr_block_subnet
  availability_zone = "ap-northeast-1a"
  tags = {
    Name = "xxx-tf-${var.tags}-pub-sub-a"
  }
}

