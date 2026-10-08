resource "aws_instance" "hobo-1" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  key_name                    = var.key_name

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "hobo"
  }
}