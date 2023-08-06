#MyIP蜿門ｾ誘RL
data "http" "ifconfig" {
  url = "http://ipv4.icanhazip.com/"
}

locals {
  myip = chomp(data.http.ifconfig.body)
}
resource "aws_security_group" "xxx" {
  name        = "xxx-tf-${var.tags}-ssh-sg"
  description = "for ec2"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${local.myip}/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "xxx-tf-${var.tags}-ssh-sg"
  }
}

