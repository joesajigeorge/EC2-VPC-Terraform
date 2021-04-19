#passing output as input of another module
output "subnet_id" {
  value       = aws_subnet.subnet.id
  description = "Subnet Id"
}

output "security_group_id" {
  value       = aws_security_group.security-group.id
  description = "security group Id"
}