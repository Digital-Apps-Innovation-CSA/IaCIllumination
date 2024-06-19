
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

module "storage-account" {
    source = "../../../modules/azure/storage-account"
    resource_group_name  = var.group_name
    location = var.location
    account_tier = var.storage.account_tier
    account_replication_type = var.storage.account_replication_type
    name = var.storage.name
    depends_on = [ module.azure-resource-group ]
  
}

module "functionapp" {
    source = "../../../modules/azure/functionapp"
    name = var.functionapp.name
    resource_group_name = var.group_name
    location = var.location
    app_service_plan_id = module.name-service-plan.service_plan_id
    storage_account_name = module.storage-account.storage_account_name
    storage_account_access_key = module.storage-account.primary_access_key
    depends_on = [ module.azure-resource-group, module.name-service-plan, module.storage-account ]
}