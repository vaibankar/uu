provider "aws" {
  profile = "uu"
  region = "us-east-1"
}

resource "aws_instance" "my-instance" {
  ami           = var.ami
  region = var.aws_region
  instance_type = var.instance_type

  tags = {
    Name  = "Terraform"
    Batch = "PK"
  }
}