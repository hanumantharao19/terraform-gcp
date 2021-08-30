# setup the GCP provider | provider.tf

terraform {
  required_version = ">= 0.12"
}

provider "google" {
  project = var.project
  credentials = file(var.gcp_auth_file)
  region  = var.region
  zone    = var.zone
}


