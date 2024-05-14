
provider "aws" {
# change to the other region to test precondition
   region = "ap-southeast-2"
}

data "aws_region" "current" {}

resource "aws_instance" "my" {
   ami =  "ami-01e7bfdbae6fd2e7b"
   instance_type = "t2.micro"
   lifecycle {
     precondition {
       condition = contains(["ap-southeast-1"],data.aws_region.current.name)
       error_message = "I expect to create EC2 at Singapore."
     }
   }

}

