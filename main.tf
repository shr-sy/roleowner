module "transfer_ownership" {
  source = "./roles"
  target_role = var.target_role
  new_owner   = var.new_owner
}
