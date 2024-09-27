# VPC Terraform Module

This module provisions a Virtual Private Cloud (VPC) on AWS, along with associated resources like subnets, route tables, internet gateways, NAT gateways, security groups, network ACLs, and VPC endpoints.

## Usage

```hcl
module "vpc" {
  source = "./vpc"

  vpc_name            = "my-vpc"
  cidr_block          = "10.0.0.0/16"
  availability_zones  = ["us-east-1a", "us-east-1b", "us-east-1c"]
  public_subnets      = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnets     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  nat_gateway_enabled = true
}
