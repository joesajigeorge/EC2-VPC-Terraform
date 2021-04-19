terraform {

  backend "s3" {
    bucket  = "tf-statefile-store"
    key     = "ec2-vpc/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
    profile = "myaccount"
  }
}

provider "aws" {
    profile = var.awsprofile
    region  = var.region
}

module "network" {
    source     = "./modules/network"
    env        = var.env
    subnet     = var.subnet
    cidr_block = var.cidr_block
    projectname = var.projectname
}

module "compute" {
    depends_on     = [ module.network ]
    source     = "./modules/compute"
    env        = var.env
    projectname = var.projectname
    ami = var.ami
    instance_type = var.instance_type
    subnet_id  = module.network.subnet_id
    security_group_id  = module.network.security_group_id
    key_name   = var.key_name
}