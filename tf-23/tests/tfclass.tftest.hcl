run "create_instance" {
   command = apply
   assert {
     condition = aws_instance.app_server.tags_all["Name"] == "lab23-0"
     error_message = "Cannot create instance for lab23"
   }
}
