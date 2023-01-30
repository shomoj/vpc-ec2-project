#EC2 instance -resource block

resource "aws_instance" "ec2projdemo" {
  ami           = "ami-0b5eea76982371e91" # us-east-1
  instance_type = "t2.micro"
    key_name   = "key29"
  
  tags = {
    "Name" = "ec2-tag"
  }
}

#create ec2-instance as a variable (to be used in module)
resource "aws_instance" "ec2projdemo" {
  ami           = var.ami # us-east-1
  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
    "Name" = var.ec2-tag
  }
}
