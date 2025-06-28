provider "google" {
  project     = "demoproject-gcp"
  region      = "us-central1"

}

resource "google_compute_instance" "mhr-qa" {
  name         = "haswitha"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

 



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
