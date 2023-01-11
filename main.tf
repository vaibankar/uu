provider "aws" {
  profile = "uu"
  region = "us-east-1"
}

resource "aws_instance" "my-instance" {
  ami           = lookup(var.ami,var.aws_region)
  instance_type = var.instance_type

  tags = {
    Name  = "Terraform"
    Batch = "PK"
  }
}
resource "aws_security_group" "sec_group" {
  name   = "sec_group"
  vpc_id = "vpc-0c9b17c90202b1fb4"
}
resource "aws_security_group" "sg" {
  name        = "sg"
  description = "Web Security Group for HTTP"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
}
resource "aws_security_group" "sg1" {
  name        = "sg1"
  description = "Web Security Group for ssh"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
}
resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = aws_security_group.sg.id
  network_interface_id = aws_instance.my-instance.primary_network_interface_id
}
