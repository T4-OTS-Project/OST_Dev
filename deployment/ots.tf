module "ots-k8-namespace" {
  source         = "../modules/k8-namespace"
  namespace_name = "ots"
}

module "ots-terraform-k8-helm-local" {
  source                = "../modules/terraform-k8-helm-local"
  deployment_name       = "ots-app"
  deployment_path       = "../charts"
  deployment_chart_name = "ots-chart"
  deployment_namespace  = module.ots-k8-namespace.namespace

  module "namespace" {
  source      = "../modules/terraform-k8s-namespace"
  name        = var.namespace
  labels      = var.namespace_labels
  annotations = var.namespace_annotations
}


module "application" {
  source               = "../modules/terraform-helm-local"
  deployment_name      = "${var.app_name}-${var.environment}"
  deployment_namespace = var.namespace
  deployment_path      = "../charts/application"
}