variable "mystring" {
  type = string
}
variable "mydefault" {
  type = string
  default = "Default Value"
}
variable "mynum" {
  type = number
}

output "mystring" {
  value = var.mystring
}
output "mynum" {
  value = var.mynum
}
output "mydefault" {
  value = var.mydefault
}

variable "mylist" {
  type = list
}
variable "mymap" {
  type = map
}

variable "mytuple" {
  type = tuple([string,number])
}

variable "myobject" {
  type = object( { name=string, skill=string, age=number })
}

