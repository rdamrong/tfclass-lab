locals {
  name = "d8k"
  mylist = ["192.168.254.5", "192.168.254.84"]
  nginx_config = templatefile("myconfig.tftpl", { serverlist = local.mylist })
}
resource "null_resource" "config"  {
  provisioner "local-exec" {
    command  = " echo \"${local.nginx_config}\" > nginx.conf"
  }
}
output "myname" {
  value = "%{ if length(local.name) == 3 }It may be my name,${local.name}.%{ else }Who are you?%{ endif }"
}

