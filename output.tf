# output "dev_public_ip" {
#   value       = module.dev.dev-public_ip
#   description = "EC2 instance public IP"
# }

output "elastic_public_ip" {
  value       = module.compute.elastic_public_ip
  description = "elastic public ip"
}