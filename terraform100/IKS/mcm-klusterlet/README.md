# Import IBM Cloud Kubernetes Service into RHACM enabled IBM CP4MCM
Copyright IBM Corp. 2020, 2020
This code is released under the Apache 2.0 License.

## Overview
This terraform template imports an existing Kubernetes cluster within the IBM Kubernetes Service (IKS) into a IBM Cloud Pak for Multicloud Manager v2.x hub-cluster that is enabled for Red Hat Advanced Cluster Management.

## Prerequisites
* Tiller should not be installed within the Kubernetes cluster


## Automation summary
The terraform template performs the following activities to import the specified IKS cluster:

* Authenticates with the Red Hat OCP on which IBM Cloud Pak for Multicloud Manager is installed.
* Executes import commands to import the target to IBM Cloud Pak for Multicloud Manager that is enabled for Red Hat Advanced Cluster Management.

### Input Data Types

Piror to deploying the template you must create the data objects for the following data types.

| Data Type | Description |
| :---      | :--- | 
| kubeconfig | Kubernetes cluster data. This contains the necessary information to login to the IKS cluster. |
| oc_login_info | Connection details for Red Hat OpenShift Container Platform on which RHACM enabled IBM CP4MCM is installed. The target IKS cluster will be imported to this IBM CP4MCM installation. |

## Template input parameters

| Parameter Name                  | Parameter Description | Required |
| :---                            | :--- | :--- |
| ocp_api_endpoint                | Red Hat OCP API Endpoint URL used in oc login command. Example https://api.<>:<port>. | true |
| ocp_user                		  | Username for connecting to the Red Hat OCP using oc login command.  Must provide token or user/password.| true when ocp_token is not available |
| ocp_password                    | Password for connecting to the Red Hat OCP using oc login command.  Must provide token or user/password. | true when ocp_token is not available  |
| ocp_ca_cert                     | OCP certificate authority certificate to be used in oc login command. | false |
| ocp_token						  | Token for connecting to the Red Hat OCP using oc login command. Must provide token or user/password. | true when ocp_user/ocp_password is not available |
| cluster_name                    | Name of the target cluster to be imported into the MCM hub cluster. Cluster name can have lower case alphabets, numbers and dash. Must start with lower case alphabet and end with alpha-numeric character. Maximum length is 63 characters. Defaults to input kubeconfig data object cluster name. | true |
| cluster_config                  | kubectl configuration text, Base64 encoded | true |
| cluster\_certificate\_authority | Certificate for authenticating with cluster, Base64 encoded | true |