#EC2 instance -resource block

resource "aws_instance" "proj1" {
  ami           = "ami-0b5eea76982371e91" # us-east-1
  instance_type = "t2.micro"
  subnet_id = "aws_subnet.privatesubnet"
  key_name   = "key29"
  
  tags = {
    "Name" = "project1"
  }
}
