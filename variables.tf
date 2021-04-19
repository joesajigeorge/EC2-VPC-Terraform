variable projectname {
  type        = string
  description = "The name of the project"
}

variable env {
  type        = string
  description = "The name of the environment"
}

variable awsprofile {
  type        = string
  description = "AWS profile configured in the system"
}

variable region {
  type        = string
  default     = "us-east-1"
  description = "The AWS region"
}

variable "subnet" {
    description = "Subnet CIDR"
}

variable "cidr_block" {
    description = "VPC CIDR"
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