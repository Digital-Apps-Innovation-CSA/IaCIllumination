variable "name" {
  description = "The name of the service plan"
  type        = string
}

variable "rgname" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource"
  type        = string
}

variable "sku_name" {
  description = "The name of the SKU"
  type        = string
}

variable "capacity" {
  description = "The capacity of the service plan"
  type        = number
}