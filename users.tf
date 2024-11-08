# User Alice
resource "aws_iam_user" "alice" {
  name = "alice"
}

resource "aws_iam_user_policy_attachment" "alice_sales_rw" {
  user       = aws_iam_user.alice.name
  policy_arn = aws_iam_policy.sales_data_rw_policy.arn
}

resource "aws_iam_user_policy_attachment" "alice_marketing_rw" {
  user       = aws_iam_user.alice.name
  policy_arn = aws_iam_policy.marketing_data_rw_policy.arn
}

resource "aws_iam_user_policy_attachment" "alice_engineering_ro" {
  user       = aws_iam_user.alice.name
  policy_arn = aws_iam_policy.engineering_data_ro_policy.arn
}

# User Bob
resource "aws_iam_user" "bob" {
  name = "bob"
}

resource "aws_iam_user_policy_attachment" "bob_rw_all" {
  user       = aws_iam_user.bob.name
  policy_arn = aws_iam_policy.all_buckets_rw_policy.arn  # Assuming you create a unified policy for all buckets read-write access
}

# User Charlie
resource "aws_iam_user" "charlie" {
  name = "charlie"
}

resource "aws_iam_user_policy_attachment" "charlie_operations_rw" {
  user       = aws_iam_user.charlie.name
  policy_arn = aws_iam_policy.operations_data_rw_policy.arn
}

resource "aws_iam_user_policy_attachment" "charlie_finance_ro" {
  user       = aws_iam_user.charlie.name
  policy_arn = aws_iam_policy.finance_data_ro_policy.arn
}

# User Backup
resource "aws_iam_user" "backup" {
  name = "backup"
}

resource "aws_iam_user_policy_attachment" "backup_ro_all" {
  user       = aws_iam_user.backup.name
  policy_arn = aws_iam_policy.all_buckets_ro_policy.arn  # Assuming you create a unified policy for all buckets read-only access
}
