resource "aws_security_group" "formation_ansible" {

  name        = "formation_ansible"
  description = "Allow SSH on remote servers"
  ingress {
    description = "Allow SSH on ports 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.default_tags

}