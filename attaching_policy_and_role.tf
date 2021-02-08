resource "aws_iam_policy_attachment" "test-attach" {
  name       = "${var.unique_id}-s3-policy-attachment"
  roles      = [aws_iam_role.ec2_s3_access_role.name]
  policy_arn = aws_iam_policy.policy.arn
}