//generate variables for the module 

variable "subnet_name" {
  type = string
}
variable "subnet_prefixes" {
  type = list(string)       
  
}
variable "resource_group_name" {
  type = string     
  
}
variable "virtual_network_name" {
  type = string
  
}