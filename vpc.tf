
resource "databricks_mws_networks" "this" {
  provider           = databricks.mws
  account_id         = var.databricks_account_id
  network_name       = "${local.prefix}-network"
  security_group_ids = ["sg-017aa592ac1be795f"]
  subnet_ids         = ["subnet-044feb979292a7a22", "subnet-07105e3417b44b644", "subnet-00fc366e61f1cfb1f", "subnet-0cf1f262026daa1d1"]
  vpc_id             = "sg-0cd8b19b5858e3d61"
}
