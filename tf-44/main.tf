module "simple_ec2" {
   source = "./module-simple-ec2"
}

output "server_name" {
  value = module.simple_ec2.server_name
}

