# output "instance_ip_addr_public" {
#   value = aws_eip.ec2_demo_instance_eip.public_ip
# }

output "instance_ip_addr_public" {
  value = aws_instance.ec2_demo_instance.public_ip
}

output "instance_ip_addr_private" {
  value = aws_instance.ec2_demo_instance.private_ip
}