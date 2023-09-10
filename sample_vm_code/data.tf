# data.tf

data "google_compute_image" "debian_image" {
  family = var.image
  project     = "debian-cloud"
}
