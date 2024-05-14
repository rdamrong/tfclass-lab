provider "aws" { }

import {
  to = aws_instance.myweb
  id = "i-00b84be3c2aac65d6"
}
