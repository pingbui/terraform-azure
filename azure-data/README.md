## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 2.22.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.7.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_group.this](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/group) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_get_group_id"></a> [get\_group\_id](#input\_get\_group\_id) | Whether to get group\_id. | `bool` | `true` | no |
| <a name="input_group_name"></a> [group\_name](#input\_group\_name) | The name of group in AD. | `string` | `"Admin"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | The Azure Client ID (Application Object ID). |
| <a name="output_group_id"></a> [group\_id](#output\_group\_id) | The Azure Object ID of Group. |
| <a name="output_object_id"></a> [object\_id](#output\_object\_id) | The Azure Object ID. |
| <a name="output_subscription_id"></a> [subscription\_id](#output\_subscription\_id) | The Azure Subscription ID. |
| <a name="output_tenant_id"></a> [tenant\_id](#output\_tenant\_id) | The Azure Tenant ID. |
