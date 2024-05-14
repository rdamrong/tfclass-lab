variable "my_ami" {
   type = string
   validation {
     condition     = substr(var.my_ami, 0, 4) == "ami-"
     error_message = "The AMI ID value must be a valid AMI id format."
   }
   sensitive = true
}

locals {
  salt = "ab12gz34"
}

