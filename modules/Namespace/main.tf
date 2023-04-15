module ots-ns {
    source = "./module"
    name = "ots-ns"
}
    
terraform {
  backend "gcs" {
    bucket  = "terraform-project-vm-bucket"
    prefix  = "terraform/state/ns"
    project = "terraform-project-vm"
    region  = "us-central1"
  }
}
