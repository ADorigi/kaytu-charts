resource "aws_iam_role" "eks_service_account_role" {
  name = "fluentbit-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "eks.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "fluentbit-role-cloudwatch-logs" {
  role       = aws_iam_role.eks_service_account_role.name
  policy_arn = aws_iam_policy.cloudwatch_policy.arn
}