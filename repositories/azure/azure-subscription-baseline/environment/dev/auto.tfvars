
location = "East US"
tags = {
  environment = "development"
}

address_space = ["10.0.2.0/24"]
subnet_name = "vm-subnet"
subnet_prefixes = ["10.0.2.0/24"]
public_ip_allocation_method = "Static"
ip_configuration_name = "example-ip-configuration"
private_ip_address_allocation = "Static"
vm_size = "Standard_DS1_v2"
os_disk_caching = "ReadWrite"
os_disk_storage_account_type = "Premium_LRS"
source_image_publisher = "MicrosoftWindowsServer"
source_image_offer = "WindowsServer"
source_image_sku = "2016-Datacenter"
source_image_version = "latest"
