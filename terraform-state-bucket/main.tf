provider "aws" {
  profile = "${var.aws_profile}"
  region  = "${var.aws_region}"
}

resource "aws_s3_bucket" "terraform-state" {
  bucket = "${var.bucket_name}"
  acl    = "private"

  versioning {
    enabled = true
  }
}

resource "aws_dynamodb_table" "terraform-state" {
  name = "${var.dynamodb_table_name}"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
 
  tags {
    Name = "DynamoDB Terraform State Lock Table"
  }
}
