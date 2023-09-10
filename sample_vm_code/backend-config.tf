terraform {
  backend "gcs" {
    bucket         = "sample-tf-backend"
    prefix         = "terraform/state"
    credentials    = "../../tfadmin.json" # Path to your GCP service account key JSON file
  }
}
