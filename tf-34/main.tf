provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  lifecycle {
     ignore_changes = [instance_type]
  }
  ami           = "ami-0bee6b4258f1faee4"
  instance_type = "t3.micro"

  tags = { 
    Name = "lab34-0"
  }
}

