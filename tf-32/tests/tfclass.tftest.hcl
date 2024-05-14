run "create_instance" {
   command = apply
   assert {
     condition = aws_instance.app_server.tags_all["Name"] == "lab32-0"
     error_message = "Cannot create instance for lab32"
   }
   assert {
     condition = aws_instance.db.tags_all["Name"] == "lab32db-0"
     error_message = "Cannot create instance for lab32db"
   }
}
