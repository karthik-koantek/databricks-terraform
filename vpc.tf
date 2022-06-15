
resource "databricks_mws_networks" "this" {
  provider           = databricks.mws
  account_id         = var.databricks_account_id
  network_name       = "${local.prefix}-network"
  security_group_ids = ["sg-017aa592ac1be795f"]
  subnet_ids         = ["subnet-001d50e6dd5ee17d3", "subnet-0ad806c2296e214b1"]
  vpc_id             = "vpc-0e1ff233e9ebb164b"
}
