resource "aws_s3_bucket" "tfer--timebox-frontend" {
  arn                 = "arn:aws:s3:::timebox-frontend"
  bucket              = "timebox-frontend"
  force_destroy       = "false"
  hosted_zone_id      = "Z21DNDUVLTQW6Q"
  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "PolicyForCloudFrontPrivateContent",
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Condition": {
        "StringEquals": {
          "AWS:SourceArn": "arn:aws:cloudfront::513123869880:distribution/E17XIMHAZR3FT6"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudfront.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::timebox-frontend/*",
      "Sid": "AllowCloudFrontServicePrincipal"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  request_payer = "BucketOwner"

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
