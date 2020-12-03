terraform {
  backend "s3" {
    bucket = "pact-terraform"
    key    = "DynamoDB_Terraform_StateLock.tfstate"
    region = "us-west-2"
  }
}
