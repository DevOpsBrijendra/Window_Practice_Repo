resource "azurerm_resource_group" "rg1" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
resource "azurerm_storage_account" "storage1" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_virtual_network" "vnet1" {
  name                = var.virtual_network_name
  address_space       = var.virtual_network_address_space
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}