
data "azurerm_client_config" "current" {}

module "azure-resource-group" {
    source        = "../../../modules/azure/azure-resource-group"
    group_name = var.group_name
    location = var.location
    tags = var.tags
}

module "name-service-plan" {
    source = "../../../modules/azure/serviceplan"
    name = var.serviceplan.name
    rgname = var.group_name
    location = var.location
    sku_name = var.serviceplan.sku_name
    size = var.serviceplan.size
    depends_on = [ module.azure-resource-group ]
}