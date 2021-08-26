provider "google" {
  project     = "demoproject-gcp"
  credentials = file("/home/venkataramana_dirisala/terraform_serviceaccount.json")
  region      = var.region

}


resource "google_compute_instance" "mhr-qa" {
  name         = var.instancename
  machine_type = var.machinetype
  zone         = var.zone

 

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

 

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

}
