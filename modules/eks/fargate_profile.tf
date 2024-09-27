resource "aws_eks_fargate_profile" "this" {
  cluster_name = var.cluster_name
  pod_execution_role_arn = module.iam.fargate_role_arn
  selector {
    namespace = "default"
  }
}
