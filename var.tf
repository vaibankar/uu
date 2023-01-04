variable "ami" {
  type = map

  default = {
    "us-east-1" = "ami-0574da719dca65348"
    "us-east-1" = "ami-0a6b2839d44d781b2"
  }
}

variable "instance_count" {
  default = "5"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "aws_region" {
  default = "us-east-1"
}