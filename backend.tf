terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-state-buscket"
    key            = "databricks/dev/terraform.tfstate"
    region         = "us-east-2"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "justanother"
  
  }
}
