########################################################################################################################
# Input variables
########################################################################################################################


variable "prefix" {
  type        = string
  description = "Prefix for name of all resource created by this example"
  validation {
    error_message = "Prefix must begin and end with a letter and contain only letters, numbers, and - characters."
    condition     = can(regex("^([A-z]|[a-z][-a-z0-9]*[a-z0-9])$", var.prefix))
  }
}

variable "region" {
  type        = string
  description = "Region where resources are created"
}

variable "resource_group" {
  type        = string
  description = "An existing resource group name to use for this example, if unset a new resource group will be created"
  default     = null
}

variable "resource_tags" {
  type        = list(string)
  description = "Optional list of tags to be added to created resources"
  default     = []
}

variable "kube_version" {
  type        = string
  description = "Version of the IKS cluster to provision"
  default     = null
}

variable "enable_vpc_cluster_version_upgrade" {
  type        = bool
  description = "When set to true, allows Terraform to manage major Kubernetes version upgrades. This is intended for advanced users who manually control major version upgrades. Defaults to false to avoid unintended drift from IBM-managed patch updates."
  default     = false
}

variable "access_tags" {
  type        = list(string)
  description = "A list of access tags to apply to the resources created by the module."
  default     = []
}
