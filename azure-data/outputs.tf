output "account_id" {
  description = "The Azure Client ID (Application Object ID)."
  value       = data.azurerm_client_config.current.client_id
}

output "tenant_id" {
  description = "The Azure Tenant ID."
  value       = data.azurerm_client_config.current.tenant_id
}

output "subscription_id" {
  description = "The Azure Subscription ID."
  value       = data.azurerm_client_config.current.subscription_id
}

output "object_id" {
  description = "The Azure Object ID."
  value       = data.azurerm_client_config.current.object_id
}

output "group_id" {
  description = "The Azure Object ID of Group."
  value       = concat(data.azuread_group.this.*.id, tolist([""]))[0]
}
