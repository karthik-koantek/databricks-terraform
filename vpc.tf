
resource "databricks_mws_networks" "this" {
  provider           = databricks.mws
  account_id         = var.databricks_account_id
  network_name       = "${local.prefix}-network"
  security_group_ids = ["sg-0cd8b19b5858e3d61"]
  subnet_ids         = ["subnet-044feb979292a7a22","subnet-0cf1f262026daa1d1"]
  vpc_id             = "vpc-005c915de1b5a8454"
}
