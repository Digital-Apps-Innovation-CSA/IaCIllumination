// crear service plan terraform 
resource "azurerm_app_service_plan" "service_plan" {
  name                = var.name
  resource_group_name = var.rgname
  location            = var.location
  sku {
    tier     = var.sku_name
    size     = var.size
  }
}