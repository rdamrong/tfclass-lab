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

  connection {
      type  = "ssh"
      user  = "ubuntu"
      private_key = file("/home/student/.ssh/id_rsa")
      host = self.public_ip
  }
  tags = {
    Name = "lab36-0"
  }
  provisioner "file" {
    source = "d8k.io"
    destination = "/tmp/file-d8k.io"
  }
  provisioner "local-exec" {
    command = "echo 'Hi, local' > local-d8k.io"
  }
  provisioner "remote-exec" {
    inline = [
      "echo 'Hi, Remote' > /tmp/remote-d8k.io",
    ]
  }


}

