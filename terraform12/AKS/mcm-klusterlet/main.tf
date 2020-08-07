resource "random_string" "random-dir" {
  length  = 8
  special = false
}

module "cluster-credentials" {
  source  = "git::https://github.com/IBM-CAMHub-Open/template_mcm_modules.git//terraform12/cluster_credentials?ref=5.0.0"

  cluster_type   = "aks"
  work_directory = "mcm${random_string.random-dir.result}"

  ## Details for accessing the target cluster
  cluster_name   = var.cluster_name
  cluster_config = var.cluster_config

  ## Access to optional bastion host
  bastion_host        = var.bastion_host
  bastion_user        = var.bastion_user
  bastion_private_key = var.bastion_private_key
  bastion_port        = var.bastion_port
  bastion_host_key    = var.bastion_host_key
  bastion_password    = var.bastion_password
}

module "cluster-import" {
  source  = "git::https://github.com/IBM-CAMHub-Open/template_rhacm_modules.git//cluster_import?ref=5.1.0"

  dependsOn      = module.cluster-credentials.credentials_generated
  work_directory = "mcm${random_string.random-dir.result}"

  ## Details for accessing the RHACM hub-cluster
  ocp_api_endpoint  = var.ocp_api_endpoint
  ocp_user          = var.ocp_user
  ocp_password      = var.ocp_password
  ocp_ca_cert       = length(var.ocp_ca_cert) > 0 ? base64decode(var.ocp_ca_cert) : var.ocp_ca_cert
  ocp_token         = var.ocp_token
  
  ## Details for accessing and importing the target cluster
  cluster_name        = var.cluster_name
  cluster_credentials = module.cluster-credentials.credentials_jsonfile

  ## If MCM image(s) are to be pulled from a private registry
  image_registry  = var.image_registry
  image_suffix    = var.image_suffix
  image_version   = var.image_version
  docker_user     = var.docker_user
  docker_password = var.docker_password

  ## Access to optional bastion host
  bastion_host        = var.bastion_host
  bastion_user        = var.bastion_user
  bastion_private_key = var.bastion_private_key
  bastion_port        = var.bastion_port
  bastion_host_key    = var.bastion_host_key
  bastion_password    = var.bastion_password
}

