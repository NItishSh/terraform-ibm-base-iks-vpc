terraform {
  required_version = ">= 1.9.0"

  # Ensure that there is always 1 example locked into the lowest provider version of the range defined in the main
  # module's version.tf (basic and custom_sg), and 1 example that will always use the latest provider version (advanced).
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = ">= 1.88.3"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.16.1"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 3.0.0, <4.0.0"
    }
  }
}
