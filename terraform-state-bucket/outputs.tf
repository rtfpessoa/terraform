output "s3_bucket" {
  value = "${aws_s3_bucket.terraform-state.id}"
}

output "dnyamodb_table" {
  value = "${aws_dynamodb_table.terraform-state.id}"
}
