locals {
  chart_values        = file("${path.module}/env/${var.environment}/values.yaml")
  secret_chart_values = sensitive(file("${path.module}/env/${var.environment}/secrets.yaml"))
}

resource "helm_release" "deploy" {
  name      = var.release_name
  namespace = var.namespace
  chart     = var.chart

  values = [
    local.chart_values,
    local.secret_chart_values
  ]

  set {
    name  = "image.tag"
    value = var.image_tag
    type  = "string"
  }

  timeout          = var.timeout
  lint             = false
  create_namespace = true
  wait             = true
  wait_for_jobs    = false
  cleanup_on_fail  = true
  recreate_pods    = false
  replace          = false
  force_update     = false
}
