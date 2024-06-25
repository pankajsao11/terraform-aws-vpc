#data block to fetch latest ami of windows os
data "aws_ami" "Windows_Server" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["Windows_Server-*"]
  }
}

#data block to fetch latest ami of linux/ubuntu os
data "aws_ami" "linux_Server" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu-pro-*"]
  }
}