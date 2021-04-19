variable "subnet" {
    description = "Subnet CIDR"
}

variable "cidr_block" {
    description = "VPC CIDR"
}

variable projectname {
  type        = string
  description = "The name of the project"
}

variable env {
  type        = string
  description = "The name of the environment"
}