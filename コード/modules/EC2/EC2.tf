data "aws_ssm_parameter" "amazon_linux" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-6.1-x86_64"
}

resource "aws_instance" "linux" {
  ami                         = data.aws_ssm_parameter.amazon_linux.value
  instance_type               = var.instance_type
  availability_zone           = "ap-northeast-1a"
  vpc_security_group_ids      = [var.security_group_id]
  subnet_id                   = var.subnet_id
  associate_public_ip_address = "true"
  key_name                    = "xxx-key" #既存キーペア使用
  tags = {
    Name = "hirota-tf-${var.tags}-linux"
  }
}
