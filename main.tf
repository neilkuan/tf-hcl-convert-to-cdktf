provider aws {
    region = "us-east-1"
}

resource random_uuid random_bucket {
}

resource aws_s3_bucket my_bucket {
    bucket = "my-bucket-${random_uuid.random_bucket.result}"
}

output bucket_name {
  value = "${aws_s3_bucket.my_bucket.bucket}"
}