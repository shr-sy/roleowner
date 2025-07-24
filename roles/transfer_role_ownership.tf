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

resource "snowflake_grant_ownership" "transfer_role" {
  on {
    object_type = "ROLE"
    object_name = var.target_role
  }

  to {
    role_name = var.new_owner
  }

  current_grants = true
}
