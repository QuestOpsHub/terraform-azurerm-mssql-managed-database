#------------------------
# MSSQL Managed Database
#------------------------
resource "azurerm_mssql_managed_database" "mssql_managed_database" {
  name                = var.mssql_managed_database_name
  managed_instance_id = var.managed_instance_id

  dynamic "long_term_retention_policy" {
    for_each = try(var.long_term_retention_policy, {}) != {} ? [1] : []
    content {
      weekly_retention  = lookup(long_term_retention_policy.value, "weekly_retention", null)
      monthly_retention = lookup(long_term_retention_policy.value, "monthly_retention", null)
      yearly_retention  = lookup(long_term_retention_policy.value, "yearly_retention ", null)
      week_of_year      = lookup(long_term_retention_policy.value, "week_of_year", null)
    }
  }

  short_term_retention_days = try(var.short_term_retention_days, null)
}