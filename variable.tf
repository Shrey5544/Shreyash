variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "disk_size" {
  description = "Disk size for the EC2 instance in GB"
  type        = number
  default     = 30
}

variable "ami_id" {
  description = "Ubuntu 22.04 AMI ID for ap-south-1"
  type        = string
  default     = "ami-09b0a86a2c84101e1" # Update with the latest Ubuntu 22.04 AMI ID
}

variable "allowed_ports" {
  description = "Ports allowed for inbound traffic in the security group"
  type        = list(number)
  default     = [22, 80, 443]
}

variable "security_group_name" {
  description = "Name of the security group to attach to the EC2 instance"
  type        = string
  default     = "ec2-secg-GITChange"
}
