module "key" {
  source = "../key-pair"
  region_name = "us-east-1"
  key_name = "serge-key"
}
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "terraform-module"
  cidr = "10.0.0.0/16"

  azs             = ["us-west-1a", "us-west-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
    Team = Devops
  }
}