variable "default_tags" {
  default = {
    "Build_by_Terraform" = "true"
    "Environment"        = "Training"
  }
  description = "Default resource tags"
  type        = map(string)
}

variable "ubuntu_ami" {

  description = "Ubuntu 22_04 ami"
  type        = map(string)
  default = {
    "eu-west-1" = "ami-02142ceceb3933ff5"
    "eu-west-3" = "ami-07b3ceab2e54447b6"
  }

}

variable "instance_type" {

  description = "Type of EC2 instance"
  default     = "t4g.micro"

}

variable "key_attributes" {

  type        = map(string)
  description = "All attributes relative to SSH key"
  default = {
    "name" = "afaivre_internal_wsl"
    "path" = "~/.ssh/ssh_keys/aws_account.pub"
  }

}