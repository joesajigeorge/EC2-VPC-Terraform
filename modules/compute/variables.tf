variable projectname {
  type        = string
  description = "The name of the project"
}

variable env {
  type        = string
  description = "The name of the environment"
}

variable "subnet_id" {
  description = "The subnet ID from the network module"
}

variable "ami" {
    type = string
    description = "AMI of the EC2 instance"
}

variable "instance_type" {
    type = string
    description = "Instance type of the EC2 instance"
}

variable "key_name" {
  type = string
  description = "Key pair name"
}

variable "security_group_id" {
  description = "Security group Id"
}
