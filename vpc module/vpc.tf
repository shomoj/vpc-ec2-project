 
# Create vpc
resource "aws_vpc" "firstvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  availability_zone = "us-east-1a"
  tags = {
    Name = "myfirstvpc"
  }
}


# Create public subnet
resource "aws_subnet" "publicsubnet" {
  vpc_id     = aws_vpc.firstvpc.id
  cidr_block = "10.0.101.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "publicsubnet"
  }
}


#Create private subnet
resource "aws_subnet" "privatesubnet" {
  vpc_id     = aws_vpc.firstvpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "privatesubnet"
  }
} 
