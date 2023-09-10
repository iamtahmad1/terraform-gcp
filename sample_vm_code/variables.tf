# variables.tf

variable "project_id" {
  description = "The Google Cloud project ID"
}

variable "region" {
  description = "The GCP region for the VM"
  default     = "us-central1"
}

variable "machine_type" {
  description = "The type of machine for the VM"
  default     = "n1-standard-1"
}

variable "image" {
  description = "The image for the VM"
  default     = "debian-cloud/debian-9"
}
