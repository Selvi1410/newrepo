resource "aws_instance" "myec2" {
  ami = var.ec2_ami_id
  instance_type = var.instance_type
  tags = {
    "Owner" = "user"
    "Environment" = "dev"
  }
 
}
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

