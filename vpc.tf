resource "google_compute_subnetwork" "subenet-mhr-hr" {
  name          = var.subnetname
  ip_cidr_range = var.cidr
  region        = var.region
  network       = google_compute_network.vpc-mhr-hr.id
}

resource "google_compute_network" "vpc-mhr-hr" {
  name                    = var.vpcname
  auto_create_subnetworks = false
}
