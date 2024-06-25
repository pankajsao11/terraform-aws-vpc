provider "aws" {
  region = var.region
}

################################################################################
# Instance
################################################################################

resource "aws_instance" "dev-ec2" {
  ami           = data.aws_ami.Windows_Server.id
  instance_type = var.instance_type

  availability_zone      = var.az
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_sg_id

  key_name   = var.key
  monitoring = var.monitoring
  tags       = merge({ "Name" = var.name }, var.instance_tags, var.tags)
  #here u can change instance name according to your preference
}