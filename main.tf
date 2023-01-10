provider "aws" {
  profile = "uu"
  region = "us-east-1"
}
resource "aws_iam_user" "rs1" {
  name = var.user
  
}