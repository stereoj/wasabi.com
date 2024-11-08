output "bucket_names" {
  value = [
    aws_s3_bucket.sales_data_bucket.id,
    aws_s3_bucket.marketing_data_bucket.id,
    aws_s3_bucket.engineering_data_bucket.id,
    aws_s3_bucket.finance_data_bucket.id,
    aws_s3_bucket.operations_data_bucket.id,
  ]
}

output "user_names" {
  value = [
    aws_iam_user.alice.name,
    aws_iam_user.bob.name,
    aws_iam_user.charlie.name,
    aws_iam_user.backup.name,
  ]
}
