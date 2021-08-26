resource "google_compute_subnetwork" "subenet-mhr-hr" {
  name          = "haswitha-subnet"
  ip_cidr_range = "10.28.7.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc-mhr-hr.id
}

resource "google_compute_network" "vpc-mhr-hr" {
  name                    = "haswitha-vpc"
  auto_create_subnetworks = false
}
