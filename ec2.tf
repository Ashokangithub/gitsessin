resource "aws_instance" "web" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_pair
  security_groups = var.security_groups
  tags = {
    Name = var.tags
  }

}
