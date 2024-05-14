provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0bee6b4258f1faee4"
  instance_type = "t2.micro"

  tags = { 
    Name = "lab32-0"
  }
}

resource "aws_instance" "db" {
  depends_on = [aws_instance.app_server]
  ami           = "ami-0bee6b4258f1faee4"
  instance_type = "t2.micro"
  tags = {
          Name = "lab32db-0"
  }
}

