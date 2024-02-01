variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}
##
# Define variables for location, service principal for AKS and Bastion VM Admin
##
variable "location" {
  type = map(string)
  default = {
    value  = "West Europe"
    suffix = "westeurope" # The corresponding value of location that is used by Azure in naming AKS resource groups
  }
}

# variable "aks_service_principal" {
#   type = map(string)
  /* Set value with .tfvars 
  {
    client_id     = "e2602892-e0a9-4f86-91de-b6a570414d2e"
    client_secret = "yZi8Q~AZ6C9BxPS~cDFrDwrvkd9te9~BLxXkVa83"
  }
  
}

variable "bastion_admin" {
  type = map(string)
  /* Set value with .tfvars 
  {
    username = "akhil.sathyan@yandex.com"
    password = "@Khilsathyan93"
  }
  */

variable "aks_service_principal" {
  description = "The service principal for AKS cluster"
  type = map(string)
}

variable "bastion_admin" {
  description = "Admin account for the bastion host"
  type = map(string)
}
