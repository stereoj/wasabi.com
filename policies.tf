# Sales Data Bucket Policies
resource "aws_iam_policy" "sales_data_rw_policy" {
  name   = "SalesDataRWPolicy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:*"]
        Effect   = "Allow"
        Resource = [
          "arn:aws:s3:::sales-data-bucket",
          "arn:aws:s3:::sales-data-bucket/*"
        ]
      }
    ]
  })
}

resource "aws_iam_policy" "sales_data_ro_policy" {
  name   = "SalesDataROPolicy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:GetObject", "s3:ListBucket"]
        Effect   = "Allow"
        Resource = [
          "arn:aws:s3:::sales-data-bucket",
          "arn:aws:s3:::sales-data-bucket/*"
        ]
      }
    ]
  })
}

# Marketing Data Bucket Policies
resource "aws_iam_policy" "marketing_data_rw_policy" {
  name   = "MarketingDataRWPolicy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:*"]
        Effect   = "Allow"
        Resource = [
          "arn:aws:s3:::marketing-data-bucket",
          "arn:aws:s3:::marketing-data-bucket/*"
        ]
      }
    ]
  })
}

resource "aws_iam_policy" "marketing_data_ro_policy" {
  name   = "MarketingDataROPolicy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:GetObject", "s3:ListBucket"]
        Effect   = "Allow"
        Resource = [
          "arn:aws:s3:::marketing-data-bucket",
          "arn:aws:s3:::marketing-data-bucket/*"
        ]
      }
    ]
  })
}

# Engineering Data Bucket Policies
resource "aws_iam_policy" "engineering_data_rw_policy" {
  name   = "EngineeringDataRWPolicy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:*"]
        Effect   = "Allow"
        Resource = [
          "arn:aws:s3:::engineering-data-bucket",
          "arn:aws:s3:::engineering-data-bucket/*"
        ]
      }
    ]
  })
}

resource "aws_iam_policy" "engineering_data_ro_policy" {
  name   = "EngineeringDataROPolicy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:GetObject", "s3:ListBucket"]
        Effect   = "Allow"
        Resource = [
          "arn:aws:s3:::engineering-data-bucket",
          "arn:aws:s3:::engineering-data-bucket/*"
        ]
      }
    ]
  })
}

# Finance Data Bucket Policies
resource "aws_iam_policy" "finance_data_rw_policy" {
  name   = "FinanceDataRWPolicy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:*"]
        Effect   = "Allow"
        Resource = [
          "arn:aws:s3:::finance-data-bucket",
          "arn:aws:s3:::finance-data-bucket/*"
        ]
      }
    ]
  })
}

resource "aws_iam_policy" "finance_data_ro_policy" {
  name   = "FinanceDataROPolicy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:GetObject", "s3:ListBucket"]
        Effect   = "Allow"
        Resource = [
          "arn:aws:s3:::finance-data-bucket",
          "arn:aws:s3:::finance-data-bucket/*"
        ]
      }
    ]
  })
}

# Operations Data Bucket Policies
resource "aws_iam_policy" "operations_data_rw_policy" {
  name   = "OperationsDataRWPolicy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:*"]
        Effect   = "Allow"
        Resource = [
          "arn:aws:s3:::operations-data-bucket",
          "arn:aws:s3:::operations-data-bucket/*"
        ]
      }
    ]
  })
}

resource "aws_iam_policy" "operations_data_ro_policy" {
  name   = "OperationsDataROPolicy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:GetObject", "s3:ListBucket"]
        Effect   = "Allow"
        Resource = [
          "arn:aws:s3:::operations-data-bucket",
          "arn:aws:s3:::operations-data-bucket/*"
        ]
      }
    ]
  })
}
