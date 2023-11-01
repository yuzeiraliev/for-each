
output "s3_bucket_names" {
  value = aws_s3_bucket.buckets[*]
}

