terraform {
  required_providers {
    aws = {
       source = "hashicorp/aws"
       version = "> 4.36.0"
    }
  }
}

provider "aws" {
   region = "ap-southeast-1"
}

provider "aws" {
   alias = "us"
   region = "us-east-1"
}

resource "aws_instance" "sg" {
  ami           = "ami-0bee6b4258f1faee4"
  instance_type = "t2.micro"
  tags = {
          Name = "lab41-0"
  }
}

data "aws_ami" "ubuntu" {
  provider = aws.us
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-20.04-amd64-server-*"]
  }
  owners = ["099720109477"]
}

resource "aws_instance" "us" {
  provider = aws.us
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  tags = {
          Name = "lab41us-0"
  }
}

