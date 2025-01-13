resource "aws_s3_bucket" "this" {
  bucket = "buying-labs-artifacts"

  tags = {
    Name        = "Release-Artifacts-Bucket"
  }
}