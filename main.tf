resource "aws_s3_bucket" "bucket2" {
  bucket = "mustafastaticbucket"
 }
 
resource "aws_s3_bucket_acl" "example_acl" {
  bucket = aws_s3_bucket.bucket2.id
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.example.bucket

  index_document {
    suffix = "index.html"
  }