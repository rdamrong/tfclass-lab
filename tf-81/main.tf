provider "aws" {
  region = "ap-southeast-1"
}
resource "aws_key_pair" "student-key" {
  key_name   = "student-key-0"
  public_key = file("/home/student/.ssh/id_rsa.pub")
}

resource "aws_instance" "app_server" {
  ami           = "ami-0bee6b4258f1faee4"
  instance_type = "t2.micro"
  key_name = "student-key-0"
  vpc_security_group_ids = [aws_security_group.sg-appserv.id]
  tags = {
    Name = "lab24-0"
  }
}
resource "aws_security_group" "sg-appserv" {
  name        = "sg_appserv-0"
  description = "AppServ Security Group"
  ingress {
    description      = "SSH Access"
    from_port        = 0
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "HTTP Access"
    from_port        = 0
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
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

