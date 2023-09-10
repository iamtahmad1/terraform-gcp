# main.tf

provider "google" {
  credentials = file("../../tfadmin.json")
  project     = var.project_id
  region      = var.region
}

resource "google_compute_instance" "example" {
  name         = "my-vm-instance"
  machine_type = var.machine_type
  zone         = "${var.region}-a"
  boot_disk {
    initialize_params {
      image = data.google_compute_image.debian_image.self_link
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
 
# Add your SSH public key to the VM's metadata
metadata = {
  ssh-keys = "test:${file("~/.ssh/id_rsa.pub")}"
}

}

