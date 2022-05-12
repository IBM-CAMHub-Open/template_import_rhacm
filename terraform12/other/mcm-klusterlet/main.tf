resource "random_string" "random-dir" {
  length  = 8
  special = false
}

locals {
  work_directory = "mcm${random_string.random-dir.result}"
}

module "cluster-import" {
  source  = "git::https://github.com/IBM-CAMHub-Open/template_rhacm_modules.git//cluster_import?ref=5.1.0"

  dependsOn      = "no dependencies"
  work_directory = local.work_directory
  kube_ctl_version    = var.kube_ctl_version
  
  ## Details for accessing the RHACM hub-cluster
  ocp_api_endpoint  = var.ocp_api_endpoint
  ocp_user          = var.ocp_user
  ocp_password      = var.ocp_password
  ocp_ca_cert       = length(var.ocp_ca_cert) > 0 ? base64decode(var.ocp_ca_cert) : var.ocp_ca_cert
  ocp_token         = var.ocp_token
  oc_cli_endpoint   = var.oc_cli_endpoint 
  ## Details for accessing and importing the target cluster
  cluster_name      = var.cluster_name
  cluster_endpoint  = var.cluster_endpoint
  cluster_user      = var.cluster_user
  cluster_token     = var.cluster_token

  ## Access to optional bastion host
  bastion_host        = var.bastion_host
  bastion_user        = var.bastion_user
  bastion_private_key = var.bastion_private_key
  bastion_port        = var.bastion_port
  bastion_host_key    = var.bastion_host_key
  bastion_password    = var.bastion_password
}

