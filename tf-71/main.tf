

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  bucket = "tfclass-student0-module"
  acl    = "private"
  versioning = {
    enabled = true
  }
}

