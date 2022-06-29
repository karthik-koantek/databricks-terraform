
resource "databricks_mws_networks" "this" {
  provider           = databricks.mws
  account_id         = var.databricks_account_id
  network_name       = "${local.prefix}-network"
  security_group_ids = ["sg-050e1b376137c7748"]
  subnet_ids         = ["subnet-0df6724b562dfd03a", "subnet-028cd890b0eca5282"]
  vpc_id             = "vpc-0f09ee564e936a805"
}
