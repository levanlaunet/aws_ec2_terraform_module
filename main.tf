# https://registry.terraform.io/providers/hashicorp/aws/latest
terraform {
  required_version = ">=1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40"
    }
  }
}

# =============================

provider "aws" {
  region = var.region
}

resource "aws_key_pair" "ec2_demo_key_pair" {
  key_name   = var.key_pair_name
  public_key = file(var.key_pair_path)
}

module "security" {
  source = "./modules/security"
  region = var.region
  public_sg_name = var.public_sg_name
  public_sg_description = var.public_sg_description
  private_sg_name = var.private_sg_name
  private_sg_description = var.private_sg_description
}

module "compute" {
  source = "./modules/compute"
  image_id = var.amis[var.region]
  key_name = aws_key_pair.ec2_demo_key_pair.key_name
  ec2_security_group_ids = [module.security.public_security_group_id]
  instance_type = var.instance_type
  instance_name = var.instance_name
}