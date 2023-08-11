#route_table
resource "aws_route_table" "hirota" {
  vpc_id = aws_vpc.hirota.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.hirota.id
  }
  tags = {
    Name = "hirota-tf-${var.tags}-pub-rtb"
  }
}

resource "aws_route_table_association" "hirota" {
  subnet_id      = aws_subnet.hirota.id
  route_table_id = aws_route_table.hirota.id
}
