resource "aws_eks_cluster" "this" {
  name     = var.cluster_name
  role_arn = module.iam.role_arn
  version  = var.cluster_version

  vpc_config {
    subnet_ids = var.subnet_ids
  }
}
