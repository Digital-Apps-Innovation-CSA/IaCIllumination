
data "azurerm_client_config" "current" {}

resource "random_string" "itsem" {
  length = 4
}

module "azure-resource-group" {
    source        = "../../../modules/azure/azure-resource-group"
    group_name = "RG_${var.user}"
    location = var.location
    tags = var.tags
}

module "VirtualNetwork" {
    source = "../../../modules/azure/VirtualNetwork"
    virtual_network_name = "VNET_${var.user}"
    address_space = var.address_space
    location = var.location
    resource_group_name = "RG_${var.user}"
    tags = var.tags
    depends_on = [ module.azure-resource-group ]
}
module "Subnet" {
    source = "../../../modules/azure/Subnet"
    subnet_name = var.subnet_name
    resource_group_name = "RG_${var.user}"
    virtual_network_name = module.VirtualNetwork.virtual_network_name
    subnet_prefixes = var.subnet_prefixes
    depends_on = [ module.VirtualNetwork ]
}
module "ip" {
    source = "../../../modules/azure/publicIp"
    public_ip_name = "PIP_${var.user}"
    location = var.location
    resource_group_name = "RG_${var.user}"
    idle_timeout_in_minutes = var.private_ip_address_allocation
    allocation_method = var.public_ip_allocation_method
    tags = var.tags
    depends_on = [ module.azure-resource-group ]
  
}
module "nic" {
    source = "../../../modules/azure/nic"
    nic_name = "NIC_${var.user}"
    location = var.location
    resource_group_name = "RG_${var.user}"
    ip_configuration_name = var.ip_configuration_name
    subnet_id = module.Subnet.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
    public_ip_address_id = module.ip.id
    tags = var.tags
    depends_on = [ module.Subnet,module.ip]
  
}
module "vm" {
    source = "../../../modules/azure/virtualmachine"
    virtual_machine_name =  "VM_${var.user}"
    location = var.location
    resource_group_name = "RG_${var.user}"
    size =  var.vm_size
    admin_username = "user_${var.user}"
    admin_password = "Pa#S1${var.user}${random_string.itsem.result}"
    network_interface_ids = [module.nic.nic_id]
    os_disk_caching = var.os_disk_caching
    os_disk_storage_account_type = var.os_disk_storage_account_type
    source_image_publisher = var.source_image_publisher
    source_image_offer = var.source_image_offer
    source_image_sku = var.source_image_sku
    source_image_version = var.source_image_version
    tags = var.tags
    depends_on = [ module.nic ]
}
