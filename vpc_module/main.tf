provider "google" {
  project     = "demoproject-gcp"
  credentials = file("/home/venkataramana_dirisala/terraform_serviceaccount.json")
  region    = "us-central1"

}

resource "google_compute_instance" "mhr-qa" {
  name         = "haswith"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

 

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
 network_interface {
    subnetwork = module.my_vpc.subnet_id

    access_config {
      // Ephemeral IP
    }
  }

}

module "my_vpc" {
 source = "./vpc_module_gcp"
 subnetname = "mhr-module-subnet"
 cidr = "10.20.20.0/24"
 region = "us-central1"
 vpcname = "mhr-module-vpc"

}
