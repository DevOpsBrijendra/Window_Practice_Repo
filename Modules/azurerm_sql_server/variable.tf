variable "mssql_server_name" {
    description = "The name of the SQL Server."
    type        = string    
}
variable "resource_group_name" {
    description = "The name of the Resource Group in which to create the SQL Server."
    type        = string        

}
variable "resource_group_location" {
    description = "The location of the Resource Group in which to create the SQL Server."
    type        = string        

}
variable "mssql_server_version" {
    description = "The version of the SQL Server."
    type        = string        
}
variable "mssql_server_admin_login" {
    description = "The administrator login name for the SQL Server."
    type        = string        
}
variable "mssql_server_admin_password" {
    description = "The administrator login password for the SQL Server."
    type        = string        
}
