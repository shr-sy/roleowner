module "transfer_ownership" {
  source = "./warehouse"

  target_warehouse = var.target_warehouse
  new_owner        = var.new_owner

  providers = {
    snowflake = snowflake
  }
}
