# Attach the policy to the IAM user
resource "aws_iam_user_policy_attachment" "user_policy_attachment" {
  user       = aws_iam_user.cloudwatch_user.name
  policy_arn = aws_iam_policy.cloudwatch_policy.arn
}
