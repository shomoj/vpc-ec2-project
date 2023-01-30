variable "region" {
  type        = string
  description = "the instance region"
  #default     = "us-east-1"
}

#VPC cider block
variable "cidr_block" {
  type        = string
  description = "vpc cidr block"
  default     = "10.0.0.0/16"
}


#VPC tag
variable "vpc-tag" {
  type        = string
  description = "the vpc tag"
  default     = "myfirstvpc"
}

# VPC Public Subnet
variable "public_subnet_cidr" {
  type        = string
  description = "public subnet cidr block"
  default     = "10.0.101.0/24"
}

variable "public_subnet_az" {
  type        = string
  description = "public subnet az"
  default     = "us-east-1a"
}

variable "pu-subnet-tag" {
  type        = string
  description = "public-subnet tag"
  default     = "publicsubnet"
}


variable "pr_subnet_cidr" {
  type        = string
  description = "private subnet cidr block"
  default     = "10.0.1.0/24"
}

variable "private_subnet_az" {
  type        = string
  description = "private subnet az"
  default     = "us-east-1b"
}
variable "pr-subnet-tag" {
  type        = string
  description = "private subnet tag"
  default     = "privatesubnet"
}
