variable "ami" {
  type = map

  default = {
    "us-east-1" = "ami-06878d265978313ca"
  }
}

variable "instance_type" {
  default = "t2.micro"
}

variable "aws_region" {
  default = "us-east-1"
}