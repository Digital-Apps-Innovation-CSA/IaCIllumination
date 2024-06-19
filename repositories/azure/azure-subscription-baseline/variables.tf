#========================resource group========================
variable "group_name" {}
variable "location" {}
variable "tags" {}
variable "serviceplan" {
  type = object({
    name     = string
    sku_name = string
    capacity = number
  })
}