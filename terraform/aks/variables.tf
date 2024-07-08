variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "node_count" {
  type        = number
  description = "The initial quantity of nodes for the node pool."
  default     = 3
}

#variable "msi_id" {
#  type        = string
#  description = "The Managed Service Identity ID. Set this value if you're running this example using Managed Identity as the authentication method."
#  default     = null
#}

variable "username" {
  type        = string
  description = "The admin username for the new cluster."
  default     = "azureadmin"
}

variable "client_id" {
  type = string
  description = "The client ID (application ID) of the Azure AD application/service principal."
}

variable "client_secret" {
  type = string
  description = "The client secret (password) of the Azure AD application/service principal."
}

variable "subscription_id" {
  type    = string
  description = "Subscription ID for Azure"
}

variable "tenant_id" {
  type    = string
  description = "Tenant ID for Azure"
}

variable "ssh_public_key" {
  default = "~/.ssh/TeachVM_key.pub"
