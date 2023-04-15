terraform {
  backend "gcs" {
    bucket  = "terraform-project-vm-bucket"
    prefix  = "/terraform2/state/ns"
    project = "terraform-project-vm"
    region  = "Multi-region"
  }
}