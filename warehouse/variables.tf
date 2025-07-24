variable "snowflake_account" {
  description = "Snowflake account identifier"
  type        = string
}

variable "snowflake_username" {
  description = "Snowflake username"
  type        = string
}

variable "snowflake_password" {
  description = "Snowflake password"
  type        = string
  sensitive   = true
}

variable "target_warehouse" {
  description = "Warehouse whose ownership needs to be changed"
  type        = string
}

variable "new_owner" {
  description = "New owner role for the warehouse"
  type        = string
}
