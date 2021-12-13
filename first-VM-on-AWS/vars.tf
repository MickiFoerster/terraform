variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "eu-central-1"
}

# Lookup image IDs on https://cloud-images.ubuntu.com/locator/ec2
variable "AMIS" {
  type = map(string)
  default = {
    eu-central-1 = "ami-021a165b41fc1d7bc"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "sshkey"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "sshkey.pub"
}
variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
