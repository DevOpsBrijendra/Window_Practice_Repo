module "resource_group" {
  source                        = "../child_module"
  resource_group_name           = "rg_apple1"
  resource_group_location       = "East US"
  storage_account_name          = "rgpracticestorage1"
  virtual_network_name          = "vnet1"
  virtual_network_address_space = ["10.0.0.0/16"]
}

