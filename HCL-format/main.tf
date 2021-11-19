variable "myvar" {
    type = string
    default = "Hello Terraform"
}

variable "mymap" {
  type = map(string)
  default = {
    mykey = "my mapped value"
  }
}

variable "mylist" {
  type = list
  default = [1,2,3]
}

provider "aws" {
}

variable "AWS_REGION" {
  type = string
}

variable "AMIS" {
  type = map(string)
  default = {
    eu-west-1 = "my ami"
  }
}

resource "aws_instance" "example" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}
resource "aws_instance" "example2" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type = "t2.small"
}
