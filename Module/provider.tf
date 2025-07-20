terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "RG_Practice"
    storage_account_name = "rgpracticestorage"
    container_name       = "rgpracticecontainer"
    key                  = "terraform.tfstate"
    subscription_id      = "f732a1d0-ce01-4a76-a731-84b6a6286211"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f732a1d0-ce01-4a76-a731-84b6a6286211"
}
