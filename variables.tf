#------------------------
# MSSQL Managed Database
#------------------------
variable "name" {
  description = "(Required) The name of the Managed Database to create. Changing this forces a new resource to be created."
  type        = string
}

variable "managed_instance_id" {
  description = "(Required) The name of the Managed Database to create. Changing this forces a new resource to be created."
  type        = string
}

variable "long_term_retention_policy" {
  description = "(Optional) A long_term_retention_policy block"
  type        = any
  default     = {}
}

variable "short_term_retention_days" {
  description = "(Optional) The backup retention period in days. This is how many days Point-in-Time Restore will be supported."
  type        = string
  default     = null
}