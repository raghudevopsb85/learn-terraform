# x1=abc # shell
# x1: abc # ansible

variable "x1" {
  default = "abc"
}

output "x1" {
  # variable var.x1 for the direct variable usage
  value = var.x1
}

output "x11" {
  # variable var.x1 is with combination of a string then ${var.x1}
  value = "Value of x1 is ${var.x1}"
}

# Data types
# String , Need to be given in double quotes
# Number, No need of quote
# Boolean, No need of quote

variable "string1" {
  default = "abc"
}

variable "number1" {
  default = 100
}

variable "number2" {
  default = 100.1
}

# true or false is supported.
variable "boolean1" {
  default = true
}

# Variable Types
# Plain
# List
# Map / Dict

variable "plain1" {
  default = "abc"
}

# list index starts from 0
variable "list1" {
  default = ["abc", 123, true]
}

variable "map1" {
  default = {
    name = "devops"
    skill = "engineer"
  }
}

output "list1_value1" {
  value = var.list1[0]
}

output "map1_name" {
  value = var.map1["name"]
}

# terraform.tfvars  -> This file will be picked automatically
variable "x2" {}

# dev.tfvars, prod.tfvars -> this needs to be exclusively passed with -var-file from cli
variable "x3_env" {}

output "x3_env" {
  value = var.x3_env
}

# File name has to be different, but the file needs to be loaded automatically, then auto.tfvars
variable "x4" {}


