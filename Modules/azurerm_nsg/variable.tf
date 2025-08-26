variable "network_security_group_name" {
  description = "The name of the Network Security Group"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the Network Security Group will be created"
  type        = string
}

variable "resource_group_location" {
  description = "The location where the Network Security Group will be created"
  type        = string
}

