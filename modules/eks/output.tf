output "cluser_endpoint" {
    description = "value of the EKS cluster endpoint"
    value = aws_eks_cluster.main.endpoint
  
}

output "cluster_name" {
    description = "EKS cluser name"
    value = aws_eks_cluster.main.name

}