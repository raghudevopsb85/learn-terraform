resource "null_resource" "dummy" {
  count = 10
}

provider "aws" {}

variable "instances" {
  default = {
    catalogue = {
      instance_type = "t3.small"
    }
    frontend = {
      instance_type = "t3.micro"
    }

  }
}

resource "aws_instance" "web" {
  for_each      = var.instances
  ami           = "ami-09c813fb71547fc4f"
  instance_type = each.value["instance_type"]

  tags = {
    Name = each.key
  }
}

