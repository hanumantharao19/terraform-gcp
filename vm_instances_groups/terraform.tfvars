# Application Definition 
app_name        = "haswitha"
app_environment = "test"
project     = "demoproject-gcp"
app_node_count  = 2

# GCP Settings
region  = "europe-west1"
zone    = "europe-west1-b"
gcp_auth_file = "/home/venkataramana_dirisala/terraform_serviceaccount.json"

# GCP Netwok
private_subnet_cidr  = "10.10.1.0/24"
