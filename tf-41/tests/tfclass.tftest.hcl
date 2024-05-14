run "create_instance" {
   command = apply
   assert {
     condition = aws_instance.sg.tags_all["Name"] == "lab41-0"
     error_message = "Cannot create instance for lab41"
   }
   assert {
     condition = aws_instance.us.tags_all["Name"] == "lab41us-0"
     error_message = "Cannot create instance for lab41us"
   }
   assert {
     condition = strcontains(aws_instance.sg.availability_zone,"ap-southeast-1")
     error_message = "Cannot create instance for lab41"
   }
   assert {
     condition = strcontains(aws_instance.us.availability_zone,"us-east-1")
     error_message = "Cannot create instance for lab41us"
   }
}
