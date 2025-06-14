variable "region" {
  type = string
  default = "ap-southeast-1"
}

variable "public_sg_name" {
  type = string
  default = "public_security_group"
}

variable "public_sg_description" {
  type = string
  default = "public_security_group_dec"
}

variable "private_sg_name" {
  type = string
  default = "private_security_group"
}

variable "private_sg_description" {
  type = string
  default = "private_security_group_dec"
}