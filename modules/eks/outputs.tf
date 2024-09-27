output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = module.cluster.cluster_name
}

output "cluster_endpoint" {
  description = "The endpoint for the EKS cluster"
  value       = module.cluster.endpoint
}

output "cluster_security_group_id" {
  description = "Security group for the EKS cluster"
  value       = module.cluster.cluster_security_group_id
}
