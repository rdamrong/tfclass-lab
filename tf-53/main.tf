provider "aws" {
  region = "ap-southeast-1"
}

locals {
   ingress_port = [22,443]
}


resource "aws_security_group" "sg-appserv" {
  name        = "sg_appserv-0"
  description = "AppServ Security Group"

  dynamic "ingress" {
    for_each = local.ingress_port
    content {
      description      = format("Access to %d/TCP",ingress.value)
      from_port        = 0
      to_port          = ingress.value
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_appserv-0"
  }
}

