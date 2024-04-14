resource "aws_s3_bucket" "tfer--timebox-frontend" {
  arn                 = "arn:aws:s3:::timebox-frontend"
  bucket              = "timebox-frontend"
  force_destroy       = "false"
  hosted_zone_id      = "Z21DNDUVLTQW6Q"
  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}
