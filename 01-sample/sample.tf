provider "aws" {}

resource "aws_instance" "web" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"

  tags = {
    Name = "web"
  }
}

