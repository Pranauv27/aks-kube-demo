provider "azurerm" {
  features {}
  skip_provider_registration = true
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.67.0"
    }
  }
  backend "azurerm" {
    subscription_id      = ""
    resource_group_name  = ""
    storage_account_name = ""
    container_name       = ""
    key                  = ""
  }
  required_version = ">= 0.14"
}