resource "aws_subnet" "subnet" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = var.subnet
    map_public_ip_on_launch = "true"
    tags = {
        Name = "${var.projectname}-${var.env}_subnet"
        Env  = var.env
    }
}