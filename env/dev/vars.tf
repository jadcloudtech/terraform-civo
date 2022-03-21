variable "cluster_name" {
  type        = string
  description = "civo cluster name"
  default     = ""
}

variable "applications" {
  type        = string
  description = "applications list"
  default     = "Linkerd:Linkerd & Jaeger"
}

variable "num_target_nodes" {
  description = "The number of instances to create"
  default     = 3
  type        = number
}

variable "target_nodes_size" {
  type        = string
  description = "The size of each node"
  default     = "g4s.kube.medium"
}
