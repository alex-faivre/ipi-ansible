output "instance_infos" {
  value = module.ec2_instance.public_ip
}

output "connection" {
  value = "ssh -l ubuntu ${module.ec2_instance.public_dns} -i ${replace(var.key_attributes.path, ".pub", "")}"
}