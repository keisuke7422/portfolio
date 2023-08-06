#route_table
resource "aws_route_table" "xxx" {
  vpc_id = aws_vpc.xxx.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.xxx.id
  }
  tags = {
    Name = "xxx-tf-${var.tags}-pub-rtb"
  }
}

resource "aws_route_table_association" "xxx" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.xxx.id
}
