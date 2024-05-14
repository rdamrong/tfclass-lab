provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "backend" {
  ami           = "ami-0bee6b4258f1faee4"
  instance_type = "t2.micro"

  tags = {
    Name = "${terraform.workspace == "prod" ? "lab72-0" : format("lab72-0-%s", terraform.workspace)} "
  }
}

