// crear service plan terraform 
resource "azapi_service_plan" "service_plan" {
  name                = var.name
  resource_group_name = var.rgname
  location            = var.location
  sku {
    name     = var.sku_name
    capacity = var.capacity
  }
}