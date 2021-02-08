resource "aws_iam_instance_profile" "ec2_s3_profile" {
  name  = "${var.unique_id}-instance-profile"
  role = aws_iam_role.ec2_s3_access_role.name
}