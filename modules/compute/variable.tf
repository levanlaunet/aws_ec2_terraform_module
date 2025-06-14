variable "region" {
  type = string
  default = "ap-southeast-1"
}

variable "image_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
}
variable "key_name" {
  type = string
  description = "name of the keypair to use for the instance"
  nullable = false
}
variable "instance_type" {
  type        = string
  description = "Type of EC2 instance to launch. Example: t2.micro"
  default = "t2.micro"
}

variable "instance_name" {
  type = string
  default = "ec2_demo_instance"
  description = "Name of the EC2 instance to create"
}

variable "ec2_security_group_ids" {
  type = list(string)
  nullable = false
}