variable "region" {
  description = "Azure region to deploy the resources"
  type        = string
  default     = "West US 2"
}

variable "appId" {
  description = "Azure Kubernetes Service Cluster service principal"
  type        = string
  default     = ""
}

variable "password" {
  description = "Azure Kubernetes Service Cluster password"
  default     = ""
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for the AKS cluster"
  type        = string
  default     = "1.25.6"
}

variable "aks_os_sku" {
  description = "AKS Operating System SKUs"
  type        = string
}

variable "aks_node_count" {
  description = "Number of nodes for the AKS cluster"
  type        = number
}

variable "aks_confidential_computing_enabled" {
  description = "Enable Confidential computing"
  type        = bool
}
