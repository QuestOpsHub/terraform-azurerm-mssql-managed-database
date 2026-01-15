## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_mssql_managed_database.mssql_managed_database](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_managed_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_long_term_retention_policy"></a> [long\_term\_retention\_policy](#input\_long\_term\_retention\_policy) | (Optional) A long\_term\_retention\_policy block | `any` | `{}` | no |
| <a name="input_managed_instance_id"></a> [managed\_instance\_id](#input\_managed\_instance\_id) | (Required) The name of the Managed Database to create. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name of the Managed Database to create. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_short_term_retention_days"></a> [short\_term\_retention\_days](#input\_short\_term\_retention\_days) | (Optional) The backup retention period in days. This is how many days Point-in-Time Restore will be supported. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | ------------------------ MSSQL Managed Database ------------------------ |
