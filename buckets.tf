resource "aws_s3_bucket" "sales_data_bucket" {
  bucket = "sales-data-bucket"
}

resource "aws_s3_bucket" "marketing_data_bucket" {
  bucket = "marketing-data-bucket"
}

resource "aws_s3_bucket" "engineering_data_bucket" {
  bucket = "engineering-data-bucket"
}

resource "aws_s3_bucket" "finance_data_bucket" {
  bucket = "finance-data-bucket"
}

resource "aws_s3_bucket" "operations_data_bucket" {
  bucket = "operations-data-bucket"
}
