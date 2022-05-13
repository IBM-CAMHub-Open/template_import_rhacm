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
  description = "Name of the IKS cluster"
}

variable "cluster_config" {
  description = "kubeconfig file contents (Base64 encoded) for Kubernetes cluster"
}

variable "cluster_certificate_authority" {
  description = "Certificate (Base64 encoded) for authenticating with IKS cluster"
}

variable "debug_foobar" {
  default = "HardCodedFoobar"
}

variable "oc_cli_endpoint" {
  description = "URL to download the oc cli from."
  default = "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/stable/openshift-client-linux.tar.gz"
}

variable "kube_ctl_version" {
  description = "kubectl to use for import operations"
  default     = "latest"
}