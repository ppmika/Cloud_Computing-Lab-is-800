resource "aws_s3_bucket" "my_bucket" {
  bucket = "tartela-bucket"  # Remove underscores and use hyphens instead
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
