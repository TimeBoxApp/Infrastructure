resource "aws_acm_certificate" "tfer--c9f9e870-5b06-4e93-bb31-b1e63561d250_timebox-002E-guru" {
  domain_name = "timebox.guru"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["*.timebox.guru", "www.timebox.guru"]
  validation_method         = "DNS"
}
