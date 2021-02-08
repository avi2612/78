resource "aws_iam_policy" "policy" {
  name        = "${var.unique_id}-bucket-policy"
  description = "tenant specific bucket access"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                        "s3:GetBucketLocation",
                        "s3:ListAllMyBuckets"
                      ],
            "Resource": "arn:aws:s3:::*"
        },
        {
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": [
                "arn:aws:s3:::'${aws_s3_bucket.s3.bucket}'",
                "arn:aws:s3:::'${aws_s3_bucket.s3.bucket}/*'"
            ]
        }
    ]
}
  EOF
}