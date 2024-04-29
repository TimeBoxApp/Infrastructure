resource "aws_cloudfront_distribution" "tfer--E17XIMHAZR3FT6" {
  aliases = ["timebox.guru", "www.timebox.guru"]

  custom_error_response {
    error_caching_min_ttl = "10"
    error_code            = "403"
    response_code         = "200"
    response_page_path    = "/index.html"
  }

  custom_error_response {
    error_caching_min_ttl = "10"
    error_code            = "404"
    response_code         = "200"
    response_page_path    = "/index.html"
  }

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD"]
    cache_policy_id        = "${aws_cloudfront_cache_policy.tfer--658327ea-f89d-4fab-a63d-7e88639e58f6.id}"
    cached_methods         = ["GET", "HEAD"]
    compress               = "true"
    default_ttl            = "0"
    max_ttl                = "0"
    min_ttl                = "0"
    smooth_streaming       = "false"
    target_origin_id       = "timebox-frontend.s3.eu-central-1.amazonaws.com"
    viewer_protocol_policy = "redirect-to-https"
  }

  enabled         = "true"
  http_version    = "http2"
  is_ipv6_enabled = "true"

  origin {
    connection_attempts = "3"
    connection_timeout  = "10"
    domain_name         = "timebox-frontend.s3.eu-central-1.amazonaws.com"
    origin_id           = "timebox-frontend.s3.eu-central-1.amazonaws.com"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  retain_on_delete = "false"

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:513123869880:certificate/c9f9e870-5b06-4e93-bb31-b1e63561d250"
    cloudfront_default_certificate = "false"
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }

  web_acl_id = "arn:aws:wafv2:us-east-1:513123869880:global/webacl/CreatedByCloudFront-60d6697f-1471-452b-a75c-384a7c1305c1/fcbbcad4-dca8-4a37-8544-e37282ba6714"
}
