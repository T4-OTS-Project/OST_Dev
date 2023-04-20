module "ots-monitoring" {
  source             = "../modules/monitoring"
  PROJECT_ID         = var.PROJECT_ID
  google_domain_name = var.google_domain_name
  service_name       = "ots"
}