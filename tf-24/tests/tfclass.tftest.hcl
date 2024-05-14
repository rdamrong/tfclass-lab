run "create_instance" {
   command = apply
   assert {
     condition = aws_instance.app_server.tags_all["Name"] == "lab24-0"
     error_message = "Cannot create instance for lab24"
   }


   assert {
     condition = length(aws_security_group.sg-appserv.id) > 0
     error_message = "connot create security group"
   }
}
