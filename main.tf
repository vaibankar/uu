provider "aws" {
  profile = "uu"
  region = "eu-north-1"
}

resource "aws_instance" "my-instance" {
  count         = var.instance_count
  ami           = lookup(var.ami,var.aws_region)
  instance_type = var.instance_type

  tags = {
    Name  = "Terraform-${count.index + 1}"
    Batch = "PK"
  }
}