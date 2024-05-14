terraform {
  backend "s3" {
    bucket = "tfclass-d8k-student0"
    dynamodb_table = "tfclass-lock-student0"
    key = "terraform/terraform.state"
    region = "ap-southeast-1"
    encrypt = true
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0bee6b4258f1faee4"
  instance_type = "t2.micro"
}

