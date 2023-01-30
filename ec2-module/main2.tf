# module block-(main referencing other main file)

module "EC2proj2" {
  source         = "./project1-module"
  ami            = var.ami
  instance_type  = var.instance_type
  ec2-tag        = var.ec2-tag
  #public_subnet_cidr  = var.public_subnet_cidr
  #pr_subnet_cidr = var.pr_subnet_cidr

  key_name = var.key_name
  region   = var.region

}



terraform {

  backend "s3" {
    bucket = "bootcamp29-1-shola"
    key    = "global/terraform.tfstate"
        #dynamodb_table = "terraform-lock"
  }
}

output "server_arn" {
  value = module.EC2proj2.server_arn
}


