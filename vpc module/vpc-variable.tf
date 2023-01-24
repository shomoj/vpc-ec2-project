
variable "region" {
  type        = string
  description = "the instance region"
  #default     = "us-east-1"
}

#VPC cider block
variable "vpc_cidr" {
type = string
description = "vpc cidr block"
default = "10.0.0.0/16"
}

# VPC Availability Zones
variable "vpc_availability_zones" {
  description = "VPC Availability Zones"
  type = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

#VPC tag
variable "vpc-tag" {
  type        = string
  description = "the vpc tag"
  #default     = "myfirstvpc"
}

# VPC Public Subnet
variable "public_subnet_cidr" {
type = string
description = "public subnet cidr block"
default = "10.0.101.0/24"
}

# VPC Public Subnet tag
variable "pu-subnet-tag" {
  type        = string
  description = "public-subnet tag"
  #default     = "publicsubnet"
}

# VPC Private Subnet 
variable "private_subnet_cidr" {
type = string
description = "private subnet cidr block"
default = "10.0.1.0/24"
}

# VPC Private Subnet tag
variable "pr-subnet-tag" {
  type        = string
  description = "private subnet tag"
  #default     = "privatesubnet"
}
