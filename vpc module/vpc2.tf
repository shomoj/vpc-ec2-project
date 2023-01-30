#vpc resources in variable format

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

