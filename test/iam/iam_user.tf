# Define the IAM user
resource "aws_iam_user" "cloudwatch_user" {
  name = "cloudwatch-user"
}