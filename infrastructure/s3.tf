resource "aws_s3_bucket" "this" {
  bucket = "artifacts"

  tags = {
    Name        = "Release-Artifacts-Bucket"
  }
}