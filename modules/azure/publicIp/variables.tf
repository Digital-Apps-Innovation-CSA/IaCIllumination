variable "public_ip_name" {
    type        = string
    description = "Name of the public IP"
}

variable "location" {
    type        = string
    description = "Location of the public IP"
}

variable "resource_group_name" {
    type        = string
    description = "Name of the resource group"
}

variable "allocation_method" {
    type        = string
    description = "Allocation method for the public IP"
}

variable "idle_timeout_in_minutes" {
    type        = number
    description = "Idle timeout in minutes for the public IP"
}

variable "tags" {
    type        = map(string)
    description = "Tags for the public IP"
}