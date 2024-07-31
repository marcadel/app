# output "cluster_name" {
#   description = "The name of the EKS cluster"
#   value       = aws_eks_cluster.eks.name
# }

# output "cluster_endpoint" {
#   description = "The endpoint of the EKS cluster"
#   value       = aws_eks_cluster.eks.endpoint
# }

# output "cluster_security_group_id" {
#   description = "Security group ID of the EKS cluster"
#   value       = aws_eks_cluster.eks.vpc_config[0].cluster_security_group_id
# }

# output "kubectl_config" {
#   description = "kubectl config file content"
#   value       = aws_eks_cluster.eks.kubeconfig[0].raw_config
#   sensitive   = true
# }

output "cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = aws_eks_cluster.eks.endpoint
}

output "cluster_certificate_authority_data" {
  description = "EKS cluster certificate authority data"
  value       = aws_eks_cluster.eks.certificate_authority.0.data
}

output "cluster_name" {
  description = "EKS cluster name"
  value       = aws_eks_cluster.eks.name
}
