resource "snowflake_warehouse_ownership_grant" "warehouse_ownership_transfer" {
  on_warehouse_name = var.target_warehouse
  to_role_name      = var.new_owner
  current_grants    = true
}
