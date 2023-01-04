variable "ami" {
  type = map

  default = {
    "eu-north-1" = "ami-0fd303abd14827300"
    "eu-north-1" = "ami-06410fb0e71718398"
  }
}

variable "instance_count" {
  default = "5"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "aws_region" {
  default = "eu-north-1"
}