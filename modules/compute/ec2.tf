# resource "tls_private_key" "privatekey" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "local_file" "cloud_pem" { 
#   filename = "${path.module}/${var.key_name}.pem"
#   content = tls_private_key.privatekey.private_key_pem
# }

# resource "aws_key_pair" "generated_key" {
#   key_name   = var.key_name
#   public_key = tls_private_key.privatekey.public_key_openssh
# }

resource "aws_instance" "ec2instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  security_groups = [var.security_group_id]
  key_name      = var.key_name
  tags = {
    Name = "${var.projectname}-${var.env}_instance"
    Env  = var.env
  }
}

resource "aws_eip" "elastic_ip" {
  instance = aws_instance.ec2instance.id
  vpc      = true
}