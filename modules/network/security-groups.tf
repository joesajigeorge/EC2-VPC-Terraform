resource "aws_security_group" "security-group" {
  name        = "${var.projectname}-${var.env}_sg"
  description = "Allow SSH from anywhere"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.projectname}-${var.env}_sg"
    env  = var.env
  }
}