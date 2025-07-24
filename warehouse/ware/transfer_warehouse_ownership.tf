terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

variable "target_warehouse" {
  type        = string
}

variable "new_owner" {
  type        = string
}

resource "snowflake_warehouse_ownership_grant" "warehouse_ownership_transfer" {
  on_warehouse_name = var.target_warehouse
  to_role_name      = var.new_owner
  current_grants    = true
}
