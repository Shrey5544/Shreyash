resource "aws_instance" "nginx_instance" {
  ami              = var.ami_id
  instance_type    = var.instance_type
  security_groups  = [aws_security_group.ec2_sg.name]  # Use the name of the security group

  root_block_device {
    volume_size = var.disk_size
  }

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "nginx-ec2-instance"
  }
}