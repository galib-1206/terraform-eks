resource "aws_iam_role" "eks_cluster" {
  name = "${var.cluster_name}-eks-cluster-role"
  
  # Attach policies as needed for the EKS cluster
}

resource "aws_iam_role" "eks_node_group" {
  name = "${var.cluster_name}-eks-node-group-role"
  
  # Attach policies as needed for the EKS node group
}
