provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  count = 2
  ami           = "ami-0bee6b4258f1faee4"
  instance_type = "t2.micro"

  tags = { 
    Name = "lab33-0"
  }
}

