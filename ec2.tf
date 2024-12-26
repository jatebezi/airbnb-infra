resource "aws_instance" "airbnb-web" {

  ami           =var.ami_id

  instance_type = var.instance_type

  monitoring = true

  ebs_optimized = true

  root_block_device {

  encrypted = true

  }
}

