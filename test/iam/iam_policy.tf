# Define the IAM policy
resource "aws_iam_policy" "cloudwatch_policy" {
  name        = "CloudWatchFullAccess"
  description = "Policy to allow full access to CloudWatch"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "logs:CreateLogStream",
          "logs:CreateLogGroup",
          "logs:PutLogEvents"
        ]
        Resource = "*"
      }
    ]
  })

}
