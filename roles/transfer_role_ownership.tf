terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

variable "target_role" {
  type = string
}

variable "new_owner" {
  type = string
}

resource "snowflake_role_ownership_grant" "role_ownership_transfer" {
  on_role_name  = var.target_role
  to_role_name  = var.new_owner
  #current_grants = true
}
