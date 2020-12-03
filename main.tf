resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = var.aws_dynamodb_table
  read_capacity  = var.aws_dynamodb_rw_capacity
  write_capacity = var.aws_dynamodb_rw_capacity
  hash_key       = var.aws_dynamodb_hash_key

  attribute {
    name = var.aws_dynamodb_hash_key
    type = "S"
  }

  # Tags
  tags = var.tags

}
