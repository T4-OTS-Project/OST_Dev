terraform {
  backend "gcs" {
    bucket  = "terraform-project-vm-bucket"
    prefix  = "/terraform2/state/ns"
  }
}

module ots-ns {
    source = "./module"
    name = "ots-ns"
}
    

