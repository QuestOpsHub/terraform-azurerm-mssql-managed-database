#------------------------
# MSSQL Managed Database
#------------------------
variable "mssql_managed_database_name" {
  description = "(Required) The name of the Managed Database to create. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "managed_instance_id" {
  description = "(Required) The name of the Managed Database to create. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "long_term_retention_policy" {
  description = "(Optional) A long_term_retention_policy block as defined below."
  type        = any
  default     = {}
}

variable "short_term_retention_days" {
  description = "(Optional) The backup retention period in days. This is how many days Point-in-Time Restore will be supported."
  type        = string
  default     = null
}