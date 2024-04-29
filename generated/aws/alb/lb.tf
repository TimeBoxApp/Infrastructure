resource "aws_lb" "tfer--timebox-api-alb" {
  desync_mitigation_mode           = "defensive"
  drop_invalid_header_fields       = "false"
  enable_cross_zone_load_balancing = "true"
  enable_deletion_protection       = "false"
  enable_http2                     = "true"
  enable_waf_fail_open             = "false"
  idle_timeout                     = "60"
  internal                         = "false"
  ip_address_type                  = "ipv4"
  load_balancer_type               = "application"
  name                             = "timebox-api-alb"
  security_groups                  = ["sg-02ebeeaa2e7d3a447"]

  subnet_mapping {
    subnet_id = "subnet-01c8da1640ed830ef"
  }

  subnet_mapping {
    subnet_id = "subnet-044b2f950de1475c7"
  }

  subnet_mapping {
    subnet_id = "subnet-0a0c81a7da52cd124"
  }

  subnets = ["subnet-01c8da1640ed830ef", "subnet-044b2f950de1475c7", "subnet-0a0c81a7da52cd124"]
}
