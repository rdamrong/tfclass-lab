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

  tags = {
    Name = "lab23-0"
  }
}

