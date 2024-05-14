run "create_instance" {
   command = apply
   assert {
     condition = aws_instance.app_server[0].tags_all["Name"] == "lab33-0"
     error_message = "Cannot create instance for lab32"
   }
   assert {
     condition = aws_instance.app_server[1].tags_all["Name"] == "lab33-0"
     error_message = "Cannot create instance for lab33"
   }
}
