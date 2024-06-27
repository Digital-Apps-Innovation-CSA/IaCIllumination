variable "user" {
    type        = string
    description = "user for the virtual machine"
  
}

variable "location" {
    type        = string
    description = "Location of the resources"
}

variable "tags" {
    type        = map(string)
    description = "Tags for the resources"
}


variable "address_space" {
    type        = list(string)
    description = "Address space for the virtual network"
}

variable "subnet_name" {
    type        = string
    description = "Name of the subnet"
}

variable "subnet_prefixes" {
    type        = list(string)
    description = "Prefixes for the subnet"
}


variable "public_ip_allocation_method" {
    type        = string
    description = "Allocation method for the public IP"
}


variable "ip_configuration_name" {
    type        = string
    description = "Name of the IP configuration"
}

variable "private_ip_address_allocation" {
    type        = string
    description = "Allocation method for the private IP"
}

variable "vm_size" {
    type        = string
    description = "Size of the virtual machine"
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