resource "aws_acm_certificate" "tfer--ecb7f840-5b9e-435a-8228-282a5551ea78_api-002E-timebox-002E-guru" {
  domain_name = "api.timebox.guru"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  validation_method = "DNS"
}
