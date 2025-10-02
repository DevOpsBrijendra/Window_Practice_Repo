terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.45.0"
    }
 
}
 backend "azurerm" {
    resource_group_name  = "rg-brij"
    storage_account_name = "lofrestorage"
    container_name       = "lofercontainer"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d73ab938-2a60-42e2-87cd-9362d4e73029"
}