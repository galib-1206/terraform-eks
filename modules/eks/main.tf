# Main EKS Module Configuration

provider "aws" {
  region = var.region
}

# EKS Cluster
module "cluster" {
  source        = "./cluster"
  cluster_name  = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id       = var.vpc_id
  subnet_ids   = var.subnet_ids
}

# Node Groups
module "node_groups" {
  source        = "./node_groups"
  cluster_name  = module.cluster.cluster_name
  vpc_id       = var.vpc_id
  subnet_ids   = var.subnet_ids
  node_group_name = var.node_group_name
}

# IAM Roles
module "iam" {
  source       = "./iam"
  cluster_name = module.cluster.cluster_name
}

# Logging
module "logging" {
  source        = "./logging"
  cluster_name  = module.cluster.cluster_name
}

# Fargate Profile
module "fargate_profile" {
  source        = "./fargate_profile"
  cluster_name  = module.cluster.cluster_name
}

# Auto Scaling
module "autoscaling" {
  source        = "./autoscaling"
  cluster_name  = module.cluster.cluster_name
}

# Addons
module "addons" {
  source        = "./addons"
  cluster_name  = module.cluster.cluster_name
}
