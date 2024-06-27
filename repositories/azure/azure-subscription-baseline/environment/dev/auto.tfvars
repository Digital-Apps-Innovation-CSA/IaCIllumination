
location = "East US"
tags = {
  environment = "development"
}


virtual_network_name = "example-virtual-network"
address_space = ["10.0.2.0/24"]

subnet_name = "example-subnet"
subnet_prefixes = ["10.0.2.0/24"]

public_ip_name = "example-public-ip"
public_ip_allocation_method = "Static"

nic_name = "example-nic"
ip_configuration_name = "example-ip-configuration"
private_ip_address_allocation = "Static"



virtual_machine_name = "example-vm"
vm_size = "Standard_DS1_v2"
admin_username = "exampleAdminUser"
admin_password = "ComplexPassw0rd!"

os_disk_caching = "ReadWrite"
os_disk_storage_account_type = "Premium_LRS"

source_image_publisher = "MicrosoftWindowsServer"
source_image_offer = "WindowsServer"
source_image_sku = "2016-Datacenter"
source_image_version = "latest"

