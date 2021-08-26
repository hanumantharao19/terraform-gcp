provider "google" {
  project     = "demoproject-gcp"
  credentials = file("/home/venkataramana_dirisala/terraform_serviceaccount.json")
  region      = "us-central1"

}


resource "google_compute_instance" "mhr-dev" {
  name         = "haswitha"
  machine_type = "e2-medium"
  zone         = "us-central1-b"

 

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

 

  network_interface {
    subnetwork = google_compute_subnetwork.subenet-mhr-hr.id

    access_config {
      // Ephemeral IP
    }
  }

}
