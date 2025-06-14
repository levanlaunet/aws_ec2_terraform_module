resource "aws_instance" "ec2_demo_instance" {
  ami                    = var.image_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = var.ec2_security_group_ids
  tags = {
    Name = var.instance_name
  }
}

# resource "aws_eip" "ec2_demo_instance_eip" {
#   instance = aws_instance.ec2_demo_instance.id
# }