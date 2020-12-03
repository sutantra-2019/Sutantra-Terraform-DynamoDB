# General vars

variable "aws_region" {
  description = "Region To Use For the resources"
  default     = "us-west-2"
}

variable "aws_profile" {
  default = "default"
}

variable "tf_state_bucket" {
  description = "string used to base various names on"
  default     = "pact-terraform"
}

variable "tf_state_lock_database" {
  description = "Terraform state lock Database Name"
  default     = "Terraform_State_Lock"
}

#----------------------------------------------------------------------------------

variable "aws_dynamodb_table" {
  description = "Name of the DynamoDB."
  type        = string
  default     = "Terraform_State_Lock"
}

variable "aws_dynamodb_rw_capacity" {
  description = "Read Write Capacity To DynamoDB"
  type        = number
  default     = 5
}

variable "aws_dynamodb_hash_key" {
  description = "Column Name In DynamodDB"
  type        = string
  default     = "LockID"
}

# Tags
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default = {
    "organization" = "PACT Pharma"
    "project"      = "Terraform State Lock Database Table"
    "client"       = "Internal"
    "CreatedBy"    = "Terraform"
  }
}
