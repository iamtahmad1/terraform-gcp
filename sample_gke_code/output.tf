# output.tf

# output "kubeconfig" {
#   value = data.local_file.kubeconfig.content
# }

output "endpoint" {
  description = "The IP address of the cluster master. This is private is disable_public_access it true"
  sensitive   = true
  value       = google_container_cluster.my_cluster.endpoint
}

output "master_version" {
  description = "The Kubernetes master version."
  value       = google_container_cluster.my_cluster.master_version
}