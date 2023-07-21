terraform {
  backend "gcs" {
    bucket = "sabio-console-acme-rocket-api-deploy"
  }

  required_providers {
    helm = {
      source = "hashicorp/helm"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = pathexpand(var.kubeconfig_path)
  }
}
