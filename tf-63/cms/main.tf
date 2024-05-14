data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-22.04-amd64-server-*"]
  }
  owners = ["099720109477"]
}
data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_instance" "appserv" {
  count = 2
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.security_group_id]
  key_name = "student-key-0"

  connection {
     type = "ssh"
     user = "ubuntu"
     host = self.public_ip
     private_key =  file(pathexpand("~/.ssh/id_rsa"))
  }
  provisioner "file" {
    source = "hello.conf"
    destination = "/tmp/hello.conf"
  }
  provisioner "remote-exec" {
    inline = [
       "sudo apt update 2>&1  > /dev/null",
       "sudo apt install -y nginx 2>&1  > /dev/null",
       "sudo cp /tmp/hello.conf /etc/nginx/conf.d/hello.conf",
       "sudo systemctl restart nginx",
    ]
  }
}

