provider "aws" {
  region = "ap-southeast-1"
}
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-20.04-amd64-server-*"]
  }
  owners = ["099720109477"]

  lifecycle {
    postcondition {
     condition     = self.platform_details == "Windows"
      error_message = "Platform Details is not match."
    }
  }

}

resource "aws_instance" "app_server" {
  ami           =  data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
}

