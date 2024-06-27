//generate variables for the module
variable "nic_name" {
    description = "Name of the network interface"
    type        = string
}

variable "location" {
    description = "Location of the network interface"
    type        = string
}

variable "resource_group_name" {
    description = "Name of the resource group"
    type        = string
}

variable "ip_configuration_name" {
    description = "Name of the IP configuration"
    type        = string
}

variable "subnet_id" {
    description = "ID of the subnet"
    type        = string
}

variable "private_ip_address_allocation" {
    description = "Private IP address allocation method"
    type        = string
}

variable "public_ip_address_id" {
    description = "ID of the public IP address"
    type        = string
}

variable "tags" {
    type        = map(string)
    description = "Tags for the public IP"
}