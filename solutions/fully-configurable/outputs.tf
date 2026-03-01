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

output "workerpools" {
  description = "Worker pools created for the cluster"
  value       = module.iks_base.workerpools
}

output "kube_version" {
  description = "The version of Kubernetes running on the provisioned cluster."
  value       = module.iks_base.kube_version
}


output "vpc_id" {
  description = "The ID of the Virtual Private Cloud (VPC) in which the cluster is deployed."
  value       = local.existing_vpc_id
}

output "region" {
  description = "The IBM Cloud region where the cluster is deployed."
  value       = local.vpc_region
}

output "resource_group_id" {
  description = "The ID of the resource group where the cluster is deployed."
  value       = module.iks_base.resource_group_id
}

output "public_service_endpoint_url" {
  description = "The public service endpoint URL for accessing the cluster over the internet."
  value       = module.iks_base.public_service_endpoint_url
}

output "private_service_endpoint_url" {
  description = "The private service endpoint URL for accessing the cluster securely within the IBM Cloud network."
  value       = module.iks_base.private_service_endpoint_url
}

output "master_url" {
  description = "The API endpoint URL for the Kubernetes master node of the cluster."
  value       = module.iks_base.master_url
}

output "master_status" {
  description = "The current status of the Kubernetes master node in the cluster."
  value       = module.iks_base.master_status
}

output "ingress_hostname" {
  description = "The hostname for the ingress subdomain."
  value       = module.iks_base.ingress_hostname
}

output "kms_key_crn" {
  description = "The CRN of the Key Management Service (KMS) key used for data encryption in this solution."
  value       = local.cluster_kms_key_id
}

output "kms_instance_guid" {
  description = "The GUID of the Key Management Service (KMS) instance used for data encryption in this solution."
  value       = local.cluster_existing_kms_guid
}

output "boot_volume_kms_key_crn" {
  description = "The CRN of the KMS key used for data encryption of the worker boot volumes in this solution"
  value       = local.boot_volume_kms_key_id
}

output "boot_volume_kms_instance_guid" {
  description = "The GUID of the KMS instance used for data encryption of the worker boot volumes in this solution"
  value       = local.boot_volume_existing_kms_guid
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
