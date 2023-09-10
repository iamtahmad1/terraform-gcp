# main.tf

resource "google_container_cluster" "my_cluster" {
  name     = var.cluster_name
  location = var.region

  initial_node_count = var.node_count

  node_config {
    machine_type = var.machine_type
    disk_size_gb = var.disk_size_gb
  }

  # master_auth {
  #   username = ""
  #   password = ""

  #   client_certificate_config {
  #     issue_client_certificate = false
  #   }
  # }
}

resource "null_resource" "generate_kubeconfig" {
  provisioner "local-exec" {
    command = "./generate_kubeconfig.sh"
  
  environment = {
      YOUR_CLUSTER_NAME = var.cluster_name 
      YOUR_PROJECT_ID = var.project_id
      YOUR_REGION = var.region
    }
}
}