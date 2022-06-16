output "id" {
  description = "The ID of the Web Application Firewall Policy."
  value       = try(azurerm_web_application_firewall_policy.this[0].id, "")
}

output "http_listener_ids" {
  description = "A list of HTTP Listener IDs from an azurerm_application_gateway."
  value       = try(azurerm_web_application_firewall_policy.this[0].http_listener_ids, "")
}

output "path_based_rule_ids" {
  description = "A list of URL Path Map Path Rule IDs from an azurerm_application_gateway."
  value       = try(azurerm_web_application_firewall_policy.this[0].path_based_rule_ids, "")
}
