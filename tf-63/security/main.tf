resource "aws_key_pair" "student-key" {
  key_name   = "student-key-0"
  public_key = file(pathexpand("~/.ssh/id_rsa.pub"))
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
    to_port          = 8080
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

