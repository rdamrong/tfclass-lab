variable "isSunSet" {
  type = bool
  default = false
}

locals {
  student = [
     { "name": "user1", "score":35},
     { "name": "user2", "score":45},
     { "name": "ext2", "score":21},
     { "name": "user3\n", "score":13},
  ]
  greeting = var.isSunSet ? "Good Night" : "Good Morning"

  s1 = [ for n in local.student : n.name ]
  s2 = local.student[*].name
  s3 = [ for n in local.student : trimspace(n.name) ]
  s4 = [ for n in local.student : trimspace(n.name) if substr(n.name,0,4) == "user" ]
}

