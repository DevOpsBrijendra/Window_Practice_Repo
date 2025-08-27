module "resource_group" {
  source              = "../../module/azurerm_resource_group"
  resource_group_name = "rg-preprod-001"
  resource_group_location = "East US"
}
module "rg1" {
  source              = "../../module/azurerm_resource_group"
  resource_group_name = "rg-preprod-002"
  resource_group_location = "East US"
}

module "rg2" {
  source              = "../../module/azurerm_resource_group"
  resource_group_name = "rg-preprod-002"
  resource_group_location = "East US"
}

module "storage_account" {
  source                   = "../../module/azurerm_storage_account"
  depends_on              = [module.resource_group]
  storage_account_name     = "stgpinku0001"
  storage_account_location = "East US"
  resource_group_name      = "rg-preprod-001"
}

module "virtual_network" {
  source                    = "../../module/azurerm_virtual_network"
  depends_on =              [module.resource_group]
  virtual_network_name      = "vnet-preprod-001"
  virtual_network_location   = "East US"
  virtual_network_address_space = ["10.0.0.0/16"]
  resource_group_name       = "rg-preprod-001"
}

module "subnet" {
  source                   = "../../module/azurerm_subnet"
  depends_on               = [module.virtual_network]
  subnet_name              = "subnet-preprod-001"
  subnet_address_prefixes  = ["10.0.1.0/24"]
  virtual_network_name     = "vnet-preprod-001"
  resource_group_name      = "rg-preprod-001"
}   