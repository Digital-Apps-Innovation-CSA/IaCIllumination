#========================resource group========================
variable "group_name" {}
variable "location" {}
variable "tags" {}
variable "serviceplan" {
  type = object({
    name     = string
    sku_name = string
    size = string
  })
}
variable "storage" {
  type = object({
    name = string
    account_tier = string
    account_replication_type = string
  })
}
variable "functionapp" {
  type = object({
    name = string
  })
  
}