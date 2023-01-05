resource "aws_key_pair" "afaivre_key_pair" {

  key_name   = var.key_attributes.name
  public_key = file(var.key_attributes.path)
  tags       = var.default_tags

}