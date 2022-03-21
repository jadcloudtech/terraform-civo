module "civo_Kubernetes" {
  source            = "../../modules/civo_Kubernetes"
  cluster_name      = var.cluster_name
  applications      = var.applications
  num_target_nodes  = var.num_target_nodes
  target_nodes_size = var.target_nodes_size
}
