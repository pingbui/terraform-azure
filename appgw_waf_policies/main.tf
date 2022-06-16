resource "azurerm_web_application_firewall_policy" "this" {
  count               = var.created ? 1 : 0
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags

  dynamic "custom_rules" {
    for_each = try(var.custom_rules, {})
    content {
      name      = custom_rules.value.name
      priority  = custom_rules.value.priority
      rule_type = custom_rules.value.rule_type
      action    = custom_rules.value.action

      dynamic "match_conditions" {
        for_each = custom_rules.value.match_conditions
        content {
          match_values       = match_conditions.value.match_values
          operator           = match_conditions.value.operator
          negation_condition = try(match_conditions.value.negation_condition, null)
          transforms         = try(match_conditions.value.transforms, null)

          dynamic "match_variables" {
            for_each = match_conditions.value.match_variables
            content {
              variable_name = match_variables.value.variable_name
              selector      = try(match_variables.value.selector, null)
            }
          }
        }
      }
    }
  }

  dynamic "policy_settings" {
    for_each = try(var.policy_settings, {}) != {} ? [1] : []
    content {
      enabled                     = try(var.policy_settings.enabled, true)
      mode                        = try(var.policy_settings.mode, "Prevention")
      file_upload_limit_in_mb     = try(var.policy_settings.file_upload_limit_in_mb, 100)
      request_body_check          = try(var.policy_settings.request_body_check, true)
      max_request_body_size_in_kb = try(var.policy_settings.max_request_body_size_in_kb, 128)
    }
  }

  dynamic "managed_rules" {
    for_each = try(var.managed_rules, {}) != {} ? [1] : []
    content {
      dynamic "exclusion" {
        for_each = try(var.managed_rules.exclusions, {})
        content {
          match_variable          = exclusion.value.match_variable
          selector                = try(exclusion.value.selector, null)
          selector_match_operator = exclusion.value.selector_match_operator
        }
      }
      dynamic "managed_rule_set" {
        for_each = var.managed_rules.managed_rule_set
        content {
          type    = try(managed_rule_set.value.type, "OWASP")
          version = try(managed_rule_set.value.version, "3.1")

          dynamic "rule_group_override" {
            for_each = try(managed_rule_set.value.rule_group_override, {})
            content {
              rule_group_name = rule_group_override.value.rule_group_name
              disabled_rules  = try(rule_group_override.value.disabled_rules, null)
            }
          }
        }
      }
    }
  }
}
