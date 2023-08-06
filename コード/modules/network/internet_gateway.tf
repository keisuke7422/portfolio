#internet_gateway
resource "aws_internet_gateway" "xxx" {
  vpc_id = aws_vpc.xxx.id
  tags = {
    Name = "xxx-tf-${var.tags}-igw"
  }
}

