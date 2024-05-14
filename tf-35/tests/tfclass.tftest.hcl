run "create_instance" {
   command = apply
   assert {
     condition = length(aws_instance.app_server.id) > 0
     error_message = "Cannot create instance for lab35"
   }
}
