variable "name" {
  description = "The name of the function app"
  type        = string
}

variable "location" {
  description = "The location of the function app"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "app_service_plan_id" {
  description = "The ID of the app service plan"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "storage_account_access_key" {
  description = "The access key of the storage account"
  type        = string
}