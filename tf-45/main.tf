module "simple_ec2" {
   source = "git::https://github.com/rdamrong/module-simple-ec2.git"
}

output "server_name" {
  value = module.simple_ec2.server_name
}

