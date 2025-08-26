module "resource_group" {
  source = "../Modules/azurerm_resource_group"

  resource_group_name     = "preprod-rg"
  resource_group_location = "West Europe"
}
module "storage_account" {
  source = "../Modules/azurerm_storage_account"
  depends_on = [module.resource_group]
  storage_account_name       = "preprodstorageacct"
  resource_group_name        = "preprod-rg"
  resource_group_location    = "West Europe"
}
module "virtual_network" {
  depends_on = [module.resource_group]
  source = "../Modules/azurerm_virtual_network"
  virtual_network_name      = "preprod-vnet"
  virtual_network_address_space = ["10.0.0.0/16"]
  resource_group_name       = "preprod-rg"
  resource_group_location   = "West Europe" 
}
module "frontend_subnet" {
  depends_on = [module.virtual_network]
  source = "../Modules/azurerm_subnet"
  subnet_name             = "frontend-subnet"
  subnet_address_prefixes   =   ["10.0.1.0/24"]
  resource_group_name     = "preprod-rg"
  virtual_network_name    = "preprod-vnet"
}
module "backend_subnet" {
  depends_on = [module.virtual_network]
  source = "../Modules/azurerm_subnet"
  subnet_name             = "backend-subnet"
  subnet_address_prefixes   =   ["10.0.2.0/24"]
  resource_group_name     = "preprod-rg"
  virtual_network_name    = "preprod-vnet"
}
module "mssql_server" {
  depends_on = [module.resource_group]
  source = "../Modules/azurerm_sql_server"
  mssql_server_name         = "preprod-sql-server"
  resource_group_name       = "preprod-rg"
  resource_group_location   = "West Europe"
  mssql_server_version      = "12.0"
  mssql_server_admin_login    = "sqladminuser"
  mssql_server_admin_password = "P@ssw0rd1234!"
}

module "mssql_database" {
  depends_on = [module.mssql_server]
  source = "../Modules/azurerm_sql_database"
  sql_database_name     = "preprod-database"
}














