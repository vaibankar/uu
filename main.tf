provider "aws" {
  profile = "uu"
  region = "us-east-1"
}
resource "aws_iam_user" "rs1" {
  name = var.userone
}
resource "aws_iam_user" "rs2" {
  name = var.u2
  
}
resource "aws_iam_user" "rs3" {
  name = var.u3
  
}
resource "aws_iam_user" "rs4" {
  name = var.u4
}