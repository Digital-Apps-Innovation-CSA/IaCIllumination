output "service_plan_id" {
  description = "The ID of the service plan"
  value       = azurerm_app_service_plan.service_plan.id
}

output "service_plan_name" {
  description = "The name of the service plan"
  value       = azurerm_app_service_plan.service_plan.name
}