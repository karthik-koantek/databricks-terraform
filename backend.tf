terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "tfstate-test-koan"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-central-1"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
     access_key = "${var.access_key}"
     secret_key = "${var.secret_key}"
  }
}
