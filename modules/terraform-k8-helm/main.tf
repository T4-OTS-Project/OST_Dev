resource "helm_release" "helm_deployment"{
    name = var.deploymnet_name
    repository = var.deployment_repo
    chart = var.deployment_chart_name
    namespace = var.deployment_namespace
    version = var.chart_version

    values = [
        var.values_yaml
    ]
}

