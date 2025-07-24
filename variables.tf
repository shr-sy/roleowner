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

variable "target_role" {
  description = "Role whose ownership needs to be changed"
  type        = string
  default     = "HCP_USER"
}

variable "new_owner" {
  description = "New owner of the target role"
  type        = string
  default     = "USERADMIN"
}
