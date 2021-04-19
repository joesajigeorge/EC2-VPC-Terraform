# resource "aws_default_route_table" "route_table" {
#     default_route_table_id = aws_vpc.vpc.default_route_table_id
#     route {
#         cidr_block = "0.0.0.0/0"
#         gateway_id = aws_internet_gateway.gateway.id
#     }
#     tags = {
#         Name = "default route table"
#         env  = var.env
#     }
# }

resource "aws_route_table" "route-table" {
    vpc_id = aws_vpc.vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.gateway.id
    }
    tags = {
        Name = "${var.projectname}-${var.env}_route_table"
        env  = var.env
    }
}

resource "aws_route_table_association" "subnet-route_table-association" {
    subnet_id      = aws_subnet.subnet.id
    route_table_id = aws_route_table.route-table.id
}