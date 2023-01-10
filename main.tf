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