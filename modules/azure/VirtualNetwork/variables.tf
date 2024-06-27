//generate variables for the module
variable "virtual_network_name" {
  type = string
}
variable "address_space" {
  type = list(string)
}
variable "location" {
  type = string
}
variable "resource_group_name" {
  type = string
}

variable "tags" {
    type        = map(string)
    description = "Tags for the public IP"
}