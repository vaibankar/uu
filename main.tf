provider "aws" {
  profile = "uu"
  region = "us-east-1"

}
resource "aws_s3_bucket" "demo-bucket"{
  bucket = "zhinga"
}

  resource "aws_s3_bucket_policy" "public_read_access" {
  bucket = aws_s3_bucket.demo-bucket.id
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
	  "Principal": "*",
      "Action": [ "s3:*" ],
      "Resource": [
        "${aws_s3_bucket.demo-bucket.arn}",
        "${aws_s3_bucket.demo-bucket.arn}/*"
      ]
    }
  ]
}
EOF
}