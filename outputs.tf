output "db_name" {
  description = "DynamoDB Table Name"
  value       = aws_dynamodb_table.terraform_state_lock.name
}
