variable "appId" {
  description = "Azure Kubernetes Service Cluster service principal"
  type        = string
}

variable "password" {
  description = "Azure Kubernetes Service Cluster password"
  type        = string
}

variable "resource_prefix" {
  description = "Resource prefix name"
  type        = string
  default     = "pranau"
}