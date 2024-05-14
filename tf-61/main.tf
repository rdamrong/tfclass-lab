
terraform {
  required_version = "> 1.2.0"
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0bee6b4258f1faee4"
  instance_type = "t2.micro"

  tags = {
          Name = "lab61-0"

  }
}

