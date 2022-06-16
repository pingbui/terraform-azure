## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.7.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_web_application_firewall_policy.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/web_application_firewall_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_created"></a> [created](#input\_created) | Whether to create the policy. | `bool` | `true` | no |
| <a name="input_custom_rules"></a> [custom\_rules](#input\_custom\_rules) | A list of custom rules. | `list(map(any))` | `[]` | no |
| <a name="input_location"></a> [location](#input\_location) | location of the resource | `string` | n/a | yes |
| <a name="input_managed_rules"></a> [managed\_rules](#input\_managed\_rules) | The managed rules. | `map(any)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the policy. | `string` | n/a | yes |
| <a name="input_policy_settings"></a> [policy\_settings](#input\_policy\_settings) | The settings of the policy. | `map(string)` | `{}` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the resource group where to create the resource. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags for the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_http_listener_ids"></a> [http\_listener\_ids](#output\_http\_listener\_ids) | A list of HTTP Listener IDs from an azurerm\_application\_gateway. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the Web Application Firewall Policy. |
| <a name="output_path_based_rule_ids"></a> [path\_based\_rule\_ids](#output\_path\_based\_rule\_ids) | A list of URL Path Map Path Rule IDs from an azurerm\_application\_gateway. |
