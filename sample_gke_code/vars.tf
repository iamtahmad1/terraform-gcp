# variables.tf

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
}

variable "region" {
  description = "The GCP region in which to create the GKE cluster"
  type        = string
  default     = "us-central1"
}

variable "node_count" {
  description = "The initial node count for the GKE cluster"
  type        = number
  default     = 1
}

variable "machine_type" {
  description = "The machine type for GKE nodes"
  type        = string
  default     = "n1-standard-2"
}

variable "disk_size_gb" {
  description = "The disk size for GKE nodes in GB"
  type        = number
  default     = 20
}

variable "credentials_file" {
  description = "Location credentials file"
  type        = string
}

variable "project_id" {
  description = "Project ID"
  type        = string
}