terraform {
  required_providers {
    ansible = {
      source  = "ansible/ansible"
    }
  }
}

resource "terraform_data" "waiting" {
  provisioner "remote-exec" {
    inline = [
       "hostnamectl",
    ]
    connection {
      type  = "ssh"
      user  = "ubuntu"
      private_key = file("~/.ssh/id_rsa")
      host =  aws_instance.app_server.public_ip
    }
  }
}
resource "ansible_playbook" "deploy" {
  depends_on = [terraform_data.waiting]
  playbook = "nginx.yaml"
  name = aws_instance.app_server.public_ip
  replayable = true

  extra_vars = {
    ansible_user                 = "ubuntu",
    ansible_ssh_private_key_file = "~/.ssh/id_rsa",
  }
}

