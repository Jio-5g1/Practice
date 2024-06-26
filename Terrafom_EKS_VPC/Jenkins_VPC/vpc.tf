module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "jenkings-vpc"
  cidr = var.cidr

  azs             = data.aws_availability_zones.azs[0]
  public_subnets  = var.public_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}