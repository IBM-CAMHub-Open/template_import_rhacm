variable "ocp_api_endpoint" {
  description = "Red Hat OCP API Endpoint URL used in oc login command. Example https://api.<>:<port>."
}

variable "ocp_user" {
  description = "Username for connecting to the Red Hat OCP using oc login command."
}

variable "ocp_password" {
  description = "Password for connecting to the Red Hat OCP using oc login command."
}

variable "ocp_ca_cert" {
  description = "OCP certificate authority certificate to be used in oc login command"
}

variable "ocp_token" {
  description = "Token for connecting to the Red Hat OCP using oc login command."
}

variable "cluster_name" {
  description = "Name of the ICP cluster"
}

variable "ocp_url" {
  description = "URL for target OCP API Server"
}

variable "ocp_oauth_url" {
  description = "URL for target OCP OAUTH Server"
  default     = ""
}

variable "ocp_admin_user" {
  description = "Username for connecting to the target OCP API server"
}

variable "ocp_admin_password" {
  description = "Password for connecting to the target OCP API server"
}

variable "oc_cli_endpoint" {
  description = "URL to download the oc cli from."
  default = "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/stable/openshift-client-linux.tar.gz"
}

variable "kube_ctl_version" {
  description = "kubectl to use for import operations"
  default     = "latest"
}