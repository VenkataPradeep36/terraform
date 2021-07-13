module "ec2" {
  source = "./ec2"
  securitygroup_id = module.securitygroup.sg_id
}
//calling the security id by sg_id and storing it in an input security group id and it act as a variable in ec2 instance

module "securitygroup" {
  source = "./securitygroup"
}

provider "aws" {
  region = "us-east-1"
}