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
  description = "kubectl configuration text, Base64 encoded"
}

variable "service_account_credentials" {
  description = "Credentials for service account used to access the cluster (Base64-encoded)"
}


variable "image_registry" {
  description = "URL for private docker registry from which klusterlet images will be pulled"
  default     = ""
}

variable "image_suffix" {
  description = "Suffix (e.g. platform type) to be appended to image name"
  default     = ""
}

variable "image_version" {
  description = "Version (tag) of the MCM image to be pulled"
  default     = ""
}

variable "docker_user" {
  description = "Username for authenticating with the private docker registry"
  default     = ""
}

variable "docker_password" {
  description = "Password for authenticating with the private docker registry"
  default     = ""
}

