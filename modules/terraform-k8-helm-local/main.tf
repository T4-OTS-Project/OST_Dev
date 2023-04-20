resource "helm_release" "helm_deployment"{
    name = var.deployment_name
    repository = var.deployment_path
    chart = var.deployment_chart_name
    namespace = var.deployment_namespace
    
    values = [
        var.values_yaml
    ]
}

