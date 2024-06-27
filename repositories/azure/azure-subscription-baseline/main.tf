
data "azurerm_client_config" "current" {}

module "azure-resource-group" {
    source        = "../../../modules/azure/azure-resource-group"
    group_name = var.group_name
    location = var.location
    tags = var.tags
}

module "VirtualNetwork" {
    source = "../../../modules/azure/VirtualNetwork"
    virtual_network_name = var.virtual_network_name
    address_space = var.address_space
    location = var.location
    resource_group_name = var.group_name
    tags = var.tags
    depends_on = [ module.azure-resource-group ]
}
module "Subnet" {
    source = "../../../modules/azure/Subnet"
    subnet_name = var.subnet_name
    resource_group_name = var.group_name
    virtual_network_name = module.VirtualNetwork.virtual_network_name
    subnet_prefixes = var.subnet_prefixes
    depends_on = [ module.VirtualNetwork ]
}
module "ip" {
    source = "../../../modules/azure/publicIP"
    public_ip_name = var.public_ip_name
    location = var.location
    resource_group_name = var.group_name
    idle_timeout_in_minutes = var.private_ip_address_allocation
    allocation_method = var.public_ip_allocation_method
    tags = var.tags
    depends_on = [ module.azure-resource-group ]
  
}
module "nic" {
    source = "../../../modules/azure/nic"
    nic_name = var.nic_name
    location = var.location
    resource_group_name = var.group_name
    ip_configuration_name = var.ip_configuration_name
    subnet_id = module.Subnet.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
    public_ip_address_id = module.ip.public_ip_id
    tags = var.tags
    depends_on = [ module.Subnet,module.ip]
  
}
module "vm" {
    source = "../../../modules/azure/virtualmachine"
    virtual_machine_name =  var.virtual_machine_name
    location = var.location
    resource_group_name = var.group_name
    size =  var.vm_size
    admin_username = var.admin_username
    admin_password = var.admin_password
    network_interface_ids = [module.nic.nic_id]
    os_disk_caching = var.os_disk_caching
    os_disk_storage_account_type = var.os_disk_storage_account_type
    source_image_publisher = var.source_image_publisher
    source_image_offer = var.source_image_offer
    source_image_sku = var.source_image_sku
    source_image_version = var.version
    tags = var.tags
    depends_on = [ module.nic ]
}
