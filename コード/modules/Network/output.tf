#vpc_id_output
output "vpc_id" {
  value = aws_vpc.hirota.id
}

#subnet_id_output
output "subnet_id" {
  value = aws_subnet.hirota.id
}