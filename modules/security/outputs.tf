output "security_group_id" {
  value = aws_security_group.ssh_access.id
}

output "key_name" {
  value = aws_key_pair.my_key.key_name
}
