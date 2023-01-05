module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.2.1"

  name = "docker_node_1"

  ami                    = var.ubuntu_ami[data.aws_region.current.name]
  instance_type          = var.instance_type
  key_name               = resource.aws_key_pair.afaivre_key_pair.key_name
  vpc_security_group_ids = [resource.aws_security_group.formation_ansible.id]

  tags = var.default_tags
}