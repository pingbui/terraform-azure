data "azurerm_client_config" "current" {}
data "azuread_group" "this" {
  count        = var.get_group_id ? 1 : 0
  display_name = var.group_name
}
