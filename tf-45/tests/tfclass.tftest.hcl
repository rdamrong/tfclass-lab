run "create_instance" {
   command = apply
   assert {
     condition = length(module.simple_ec2.server_name) > 0
     error_message = "Cannot create instance for lab44"
   }
}
