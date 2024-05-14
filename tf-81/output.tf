output "host_name" {
  value =  aws_instance.app_server.public_dns
}
