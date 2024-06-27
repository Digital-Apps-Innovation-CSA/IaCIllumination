resource "azurerm_public_ip" "itsem" {
  name                    = var.public_ip_name
  location                = var.location
  resource_group_name     = var.resource_group_name
  allocation_method       = var.allocation_method
  idle_timeout_in_minutes = var.idle_timeout_in_minutes
  tags = var.tags
}
