provider "azurerm" {
  features {}
  use_oidc = true
}

provider "azapi" {
  use_oidc = true
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.67.0"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.30.0"
    }
  }
  backend "azurerm" {
    # subscription_id      = ""
    # resource_group_name  = ""
    # storage_account_name = ""
    # container_name       = ""
    key                  = ""
    use_oidc             = true
  }
  required_version = ">= 0.14"
}