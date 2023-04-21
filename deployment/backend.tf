terraform {
  backend "gcs" {
    bucket  = "terraform-project-atserge1"
    prefix  = "terraform/state/ots-deployment"
  }
}