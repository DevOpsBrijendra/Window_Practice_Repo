data "subnet_id" "subnet1" {}



resource "azurerm_network_security_group" "nsg1" {
  name                = var.network_security_group_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  security_rule {
    name                       = "SSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
resource "azurerm_subnet_network_security_group_association" "subnetnsg1" {
  subnet_id                 = data.subnet_id.subnet1.id
  network_security_group_id = azurerm_network_security_group.nsg1.id
}    