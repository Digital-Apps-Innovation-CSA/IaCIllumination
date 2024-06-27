variable "virtual_machine_name" {
    type        = string
    description = "Name of the virtual machine"
}

variable "resource_group_name" {
    type        = string
    description = "Name of the resource group"
}

variable "location" {
    type        = string
    description = "Location of the virtual machine"
}

variable "size" {
    type        = string
    description = "Size of the virtual machine"
}

variable "admin_username" {
    type        = string
    description = "Admin username for the virtual machine"
}

variable "admin_password" {
    type        = string
    description = "Admin password for the virtual machine"
}

variable "network_interface_ids" {
    type        = list(string)
    description = "List of network interface IDs"
}

variable "os_disk_caching" {
    type        = string
    description = "Caching type for the OS disk"
}

variable "os_disk_storage_account_type" {
    type        = string
    description = "Storage account type for the OS disk"
}

variable "source_image_publisher" {
    type        = string
    description = "Publisher of the source image"
}

variable "source_image_offer" {
    type        = string
    description = "Offer of the source image"
}

variable "source_image_sku" {
    type        = string
    description = "SKU of the source image"
}

variable "source_image_version" {
    type        = string
    description = "Version of the source image"
}

variable "tags" {
    type        = map(string)
    description = "Tags for the virtual machine"
}