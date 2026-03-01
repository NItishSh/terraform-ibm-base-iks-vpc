########################################################################################################################
# Outputs
########################################################################################################################

output "cluster_name" {
  value       = module.iks_base.cluster_name
  description = "The name of the provisioned Kubernetes cluster."
}

output "cluster_id" {
  value       = module.iks_base.cluster_id
  description = "The unique identifier assigned to the provisioned Kubernetes cluster."
}

output "cluster_crn" {
  description = "The Cloud Resource Name (CRN) of the provisioned Kubernetes cluster."
  value       = module.iks_base.cluster_crn
}

output "vpc_name" {
  description = "The name of the Virtual Private Cloud (VPC) in which the cluster is deployed."
  value       = module.vpc.vpc_name
}

output "vpc_id" {
  description = "The ID of the Virtual Private Cloud (VPC) in which the cluster is deployed."
  value       = module.iks_base.vpc_id
}

output "region" {
  description = "The IBM Cloud region where the cluster is deployed."
  value       = module.iks_base.region
}


output "resource_group_id" {
  description = "The ID of the resource group where the cluster is deployed."
  value       = module.iks_base.resource_group_id
}

output "public_service_endpoint_url" {
  description = "The public service endpoint URL for accessing the cluster over the internet."
  value       = module.iks_base.public_service_endpoint_url
}

output "master_url" {
  description = "The API endpoint URL for the Kubernetes master node of the cluster."
  value       = module.iks_base.master_url
}

output "master_status" {
  description = "The current status of the Kubernetes master node in the cluster."
  value       = module.iks_base.master_status
}

output "next_steps_text" {
  value       = "Your IBM Cloud Kubernetes cluster is ready. You can now build, deploy, and manage containerized applications."
  description = "Next steps text"
}

output "next_step_primary_label" {
  value       = "Kubernetes cluster overview page"
  description = "Primary label"
}

output "next_step_primary_url" {
  value       = "https://cloud.ibm.com/kubernetes/clusters/${module.iks_base.cluster_id}/overview"
  description = "primary url"
}

output "next_step_secondary_label" {
  value       = "Steps to deploy application on Cluster"
  description = "Secondary label"
}

output "next_step_secondary_url" {
  value       = "https://cloud.ibm.com/docs/containers?topic=containers-cs_cli_install"
  description = "secondary url"
}
