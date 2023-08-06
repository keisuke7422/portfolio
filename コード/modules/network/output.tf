#vpc_id_output
output "vpc_id" {
  value = aws_vpc.xxx.id
}

#subnet_id_output
output "subnet_id" {
  value = aws_subnet.main.id
}