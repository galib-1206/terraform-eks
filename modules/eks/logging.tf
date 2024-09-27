resource "aws_eks_cluster_logging" "this" {
  cluster_name = aws_eks_cluster.this.name

  enable_logging {
    types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
  }
}
