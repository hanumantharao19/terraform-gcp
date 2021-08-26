provider "google" {
  project     = "demoproject-gcp"
  credentials = file("/home/venkataramana_dirisala/terraform_serviceaccount.json")
  region      = var.region

}
