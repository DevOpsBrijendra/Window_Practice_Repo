variable "network_interface_name" {
  description = "The name of the network interface."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the network interface."
  type        = string
}
variable "resource_group_location" {
  description = "The location of the resource group in which to create the network interface."
  type        = string
}
variable "subnet_id" {
  description = "The ID of the subnet in which to create the network interface."
  type        = string
}
