variable "project_id" {
  description = "easynext-ti"
  type        = string
}

variable "region" {
  description = "Região do cluster"
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "Nome do cluster Kubernetes"
  type        = string
  default     = "komiser-cluster"
}

variable "node_count" {
  description = "Número de nós no cluster"
  type        = number
  default     = 3
}
