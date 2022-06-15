
resource "databricks_mws_networks" "this" {
  provider           = databricks.mws
  account_id         = var.databricks_account_id
  network_name       = "${local.prefix}-network"
  security_group_ids = ["sg-02e625d79efabbbd9"]
  subnet_ids         = ["subnet-0cdb48a2c43df9ec9", "subnet-0ad806c2296e214b1"]
  vpc_id             = "vpc-0e1ff233e9ebb164b"
}
