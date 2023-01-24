# AWS EC2 Instance Terraform Variables
# EC2 Instance Variables

# Ec2 instance region
variable "region" {
  type        = string
  description = "the instance region"
  #default     = "us-east-1"
}

#AWS Instance AMI
variable "ami" {
  type        = string
  description = "the ami id"
  default     = "ami-0b5eea76982371e91"
}

#AWS instance type
variable "instance_type" {
  type        = string
  description = "the instance type"
  default     = "t2.micro"
}

#AWS ec2-tag
variable "ec2-tag" {
  type        = string
  description = "the instance tag"
  default     = "project1"
}

#AWS privatesubnetid
variable "privatesubnetid" {
  type        = string
  description = "the instance private subnet"
  default     = "aws_subnet.privatesubnet"
}

#AWS publicsubnetid
variable "publicsubnetid" {
  type        = string
  description = "the instance public subnet"
  #default     = "aws_subnet.publicsubnet"
}

#AWS instance key
variable "key_name" {
  type = string
  description = "the instance key"
  default = "key29"
  
}
