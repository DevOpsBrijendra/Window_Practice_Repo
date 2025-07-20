terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-dev"
    storage_account_name = "storageaccounttfstate098"
    container_name       = "container-dev"
    key                  = "terraform.tfstate"
    tenant_id      = "ecc8db67-d45e-4b38-9f31-423f3b5ca490"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f732a1d0-ce01-4a76-a731-84b6a6286211"
}
