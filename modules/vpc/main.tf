module "vpc" {
  source = "./vpc"

  vpc_name   = var.vpc_name
  cidr_block = var.cidr_block
  availability_zones = var.availability_zones
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  nat_gateway_enabled = var.nat_gateway_enabled
}
