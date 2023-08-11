#internet_gateway
resource "aws_internet_gateway" "hirota" {
  vpc_id = aws_vpc.hirota.id
  tags = {
    Name = "hirota-tf-${var.tags}-igw"
  }
}

