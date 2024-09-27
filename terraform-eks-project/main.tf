# Main configuration for EKS Cluster and related services

provider "aws" {
  region = var.region
}

# VPC Module
module "vpc" {
  source = "./modules/vpc"
  region = var.region 
  vpc_cidr = var.vpc_cidr
  private_subnets = var.private_subnets
  public_subnets = var.public_subnets
}

# EKS Module
module "eks" {
  source             = "./modules/eks"
  cluster_name       = var.cluster_name
  cluster_version    = var.cluster_version
  vpc_id             = module.vpc.vpc_id
  subnet_ids         = module.vpc.private_subnets
  public_subnet_ids  = module.vpc.public_subnets
}

# S3 Module
module "s3" {
  source      = "./modules/s3"
  bucket_name = var.s3_bucket_name
}

# EFS Module
module "efs" {
  source    = "./modules/efs"
  vpc_id    = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
}

# IAM Module
module "iam" {
  source = "./modules/iam"
}

# RDS Module
module "rds" {
  source = "./modules/rds"
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
}

# SNS Module
module "sns" {
  source = "./modules/sns"
  sns_topic_name = var.sns_topic_name
}

# Grafana Module
module "grafana" {
  source      = "./modules/grafana"
  cluster_id  = module.eks.cluster_id
}

# Prometheus Module
module "prometheus" {
  source     = "./modules/prometheus"
  cluster_id = module.eks.cluster_id
}

# CloudFront Module
module "cloudfront" {
  source      = "./modules/cloudfront"
  s3_origin_id = module.s3.bucket_id
}
