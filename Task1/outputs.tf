# Output the outpost coordinates (kubeconfig) to connect to the EKS cluster
output "kubeconfig" {
  value = module.eks_cluster.kubeconfig_filename
}
