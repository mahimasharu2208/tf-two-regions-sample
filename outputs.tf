output "bucket_use1_name" {
  value       = aws_s3_bucket.use1_bucket.id
  description = "Bucket name in us-east-1"
}

output "bucket_usw2_name" {
  value       = aws_s3_bucket.usw2_bucket.id
  description = "Bucket name in us-west-2"
}
