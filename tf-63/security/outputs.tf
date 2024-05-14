output "security_group_id" {
   value = aws_security_group.sg-appserv.id
}
output "key_pair_name" {
   value = aws_key_pair.student-key.key_name
}

