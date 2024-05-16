# ===================================
# Author: @aglorhythm / girlysheet.cloud ✿
# Description: Creating an outputs.tf file is an excellent practice to 
# expose important information about the resources you're managing.
# These variables can be reused in other configuration files.
# ===================================

## to update - not complete

output "instance_ids" {
  value = {
    for instance in aws_instance.vm_jenkins : instance.tags["Name"] => instance.id
  }
  description = "Map of instance names to their corresponding IDs."
}

output "instance_public_ips" {
  value = {
    for instance in aws_instance.vm_jenkins : instance.tags["Name"] => instance.public_ip
  }
  description = "Map of instance names to their public IPs."
}

output "instance_jenkins_ip" {
  value = aws_instance.vm_jenkins[0].public_ip
  description = "IP address of Jenkins EC2 instance"
}

