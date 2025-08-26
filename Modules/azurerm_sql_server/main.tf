resource "azurerm_mssql_server" "mssql" {
  name            = var.mssql_server_name   
  resource_group_name          = var.resource_group_name
  location                     = var.resource_group_location
  version                      = var.mssql_server_version
  administrator_login          = var.mssql_server_admin_login
  administrator_login_password = var.mssql_server_admin_password

}