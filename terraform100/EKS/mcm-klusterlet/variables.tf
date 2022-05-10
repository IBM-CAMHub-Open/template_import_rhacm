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
  description = "Name of the EKS cluster"
}

variable "cluster_config" {
  description = "kubeconfig file contents (Base64 encoded) for Kubernetes cluster"
}

variable "access_key_id" {
  description = "Access key ID for Amazon EC2 cloud"
}

variable "secret_access_key" {
  description = "Secret access key for Amazon EC2 cloud"
}

variable "aws_region" {
  description = "The region in which the EKS cluster is deployed"
}
variable "oc_cli_endpoint" {
  description = "URL to download the oc cli from."
  default = "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/stable/openshift-client-linux.tar.gz"
}
