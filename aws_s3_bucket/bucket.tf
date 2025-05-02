resource "aws_s3_bucket" "my_bucket" {
    bucket = "bucket_in_aws"

    tags = {
        Name        = "MyS3Bucket"
        Environment = "Dev"
    }
}