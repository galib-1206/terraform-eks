# Outputs from root module

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "eks_cluster_id" {
  value = module.eks.cluster_id
}

output "s3_bucket_id" {
  value = module.s3.bucket_id
}

output "rds_instance" {
  value = module.rds.rds_instance
}

output "sns_topic_arn" {
  value = module.sns.sns_topic_arn
}
