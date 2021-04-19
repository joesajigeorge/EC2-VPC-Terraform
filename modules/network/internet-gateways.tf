resource "aws_internet_gateway" "gateway" {
    vpc_id = aws_vpc.vpc.id
    tags = {
        Name = "${var.projectname}-${var.env}_gateway"
        Env  = var.env
    }
}