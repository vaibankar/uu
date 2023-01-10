provider "aws" {
  profile = "uu"
  region = "us-east-1"
}
resource "aws_iam_user" "rs1" {
  count = length(var.user)
  name = var.user[count.0]
}