# data "local_file" "kubeconfig" {
#   depends_on = [null_resource.generate_kubeconfig]
#   source = "/path/to/output/kubeconfig"
# }