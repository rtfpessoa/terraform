variable "aws_region" {
  description = "The aws region to deploy"
  default = "us-east-1"
}

variable "aws_profile" {
  description = "The aws profile to use"
  default = "personal"
}

variable "bucket_name" {
  description = "The terraform state bucket name"
  default = "terraform-state-bucket.rtfpessoa.xyz"
}

variable "dynamodb_table_name" {
  description = "The terraform state dynamodb lock table name"
  default = "terraform-state-table"
}
