# Create a firewall
resource "civo_firewall" "kubernetes_firewall" {
  name = "civo-firewall"
}

# Create a firewall rule
resource "civo_firewall_rule" "kubernetes" {
  firewall_id = civo_firewall.kubernetes_firewall.id
  protocol    = "tcp"
  start_port  = "6443"
  end_port    = "6443"
  cidr        = ["0.0.0.0/0"]
  direction   = "ingress"
  label       = "kubernetes-api-server"
}

# Create a cluster
resource "civo_kubernetes_cluster" "intelops-cluster" {
  name              = var.cluster_name
  applications      = var.applications
  num_target_nodes  = var.num_target_nodes
  target_nodes_size = var.target_nodes_size
  firewall_id       = civo_firewall.kubernetes_firewall.id
}
