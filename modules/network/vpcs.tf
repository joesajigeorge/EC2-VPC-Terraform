resource "aws_vpc" "vpc" {
    cidr_block           = var.cidr_block
    tags = {
        Name = "${var.projectname}-${var.env}_vpc"
        Env  = var.env
    }
}