resource "aws_s3_bucket" "s3_bucket" {
  bucket = "demobucket1"

  tags = {
    Name        = "My bucket"
    Environment = "JiteshBucket"
  }
}