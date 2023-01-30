# complete variable files in module

# Create vpc
resource "aws_vpc" "firstvpc" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"
  tags = {
    Name = var.vpc-tag
  }
}


# Create public subnet
resource "aws_subnet" "publicsubnet" {
  vpc_id            = aws_vpc.firstvpc.id
  cidr_block        = var.public_subnet_cidr
  availability_zone = var.public_subnet_az

  tags = {
    Name = var.pu-subnet-tag
  }
}

#Create private subnet
resource "aws_subnet" "privatesubnet" {
  vpc_id            = aws_vpc.firstvpc.id
  cidr_block        = var.pr_subnet_cidr
  availability_zone = var.private_subnet_az

  tags = {

    Name = var.pr-subnet-tag
  }
}
#create ec2-instance
resource "aws_instance" "ec2projdemo" {
  ami           = var.ami # us-east-1
  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
    "Name" = var.ec2-tag
  }
}
