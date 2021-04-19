output "public_ip" {
  value       = aws_instance.ec2instance.public_ip
  description = "ec2 instance public ip"
}

output "elastic_public_ip" {
  value       = aws_eip.elastic_ip.public_ip
  description = "elastic public ip"
}