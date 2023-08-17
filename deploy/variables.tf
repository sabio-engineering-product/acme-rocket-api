variable "namespace" {
  type        = string
  description = "The namespace the release should be deployed to."
  default     = "knowledge"
}

variable "chart" {
  type        = string
  description = "Path or name of the chart that should be deployed."
  default     = "./chart"
}

variable "release_name" {
  type        = string
  description = "The name of the release that chart should be deployed as."
  default     = "acme-rocket-api"
}

variable "timeout" {
  type        = number
  description = "The timeout (in seconds) after which the Helm release will be aborted."
  default     = 300
}

variable "environment" {
  type        = string
  description = "The name of the environment E.g., console-demo, console-staging, console-production."
}

variable "image_tag" {
  type        = string
  description = "Tag of the Docker container image that should be deployed."
}

variable "kubeconfig_path" {
  type        = string
  description = "The absolute path of the kubeconfig file containing the credentials of the target cluster."
  default     = "~/.kube/config"
}
