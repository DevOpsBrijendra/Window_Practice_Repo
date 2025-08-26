terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "RG_Practice"
    storage_account_name = "rgpracticestorage"
    container_name       = "rgpracticecontainer"
    key                  = "terraform.tfstate"
    tenant_id      = "ecc8db67-d45e-4b38-9f31-423f3b5ca490"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "07181b5e-cb73-4072-8605-0c0f9f4ae28f"
}
