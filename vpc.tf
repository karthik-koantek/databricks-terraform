
resource "databricks_mws_networks" "this" {
  provider           = databricks.mws
  account_id         = var.databricks_account_id
  network_name       = "${local.prefix}-network"
  security_group_ids = ["sg-0e2d47e6198de75b9"]
  subnet_ids         = ["subnet-00720cff184e76016","subnet-0f959ebc70ab4c4bb", "subnet-011d232b99780f772"]
  vpc_id             = "vpc-075f0491ccdb6cf42"
}
