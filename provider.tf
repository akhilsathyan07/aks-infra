provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id = "e552225f-29e7-4e9b-bcc1-a1b948e8d004" 
  tenant_id       = "402b9fa3-31be-4d42-83f1-f6aa43b886a5"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.62.1"
    }
  }
}