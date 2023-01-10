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
resource "aws_iam_group" "rs5" {
  name = var.u5
  
}
resource "aws_iam_group_membership" "grup_mem" {
  name = "group ahe ha"
  users = [aws_iam_user.rs1.name,aws_iam_user.rs2.name,aws_iam_user.rs3.name,aws_iam_user.rs4.name]
  group = [aws_iam_group.rs5.name]
  
}