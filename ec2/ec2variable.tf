variable "ami" {
  type        = string
  description = "the ami id"
  #default     = "ami-0b5eea76982371e91"
}

variable "instance_type" {
  type        = string
  description = "the instance type"
  #default     = "t2.micro"
}

variable "ec2-tag" {
  type        = string
  description = "the instance tag"
  #default     = "project1"
}


variable "key_name" {
  type        = string
  description = "the instance key"
  #default = "key29"

}
