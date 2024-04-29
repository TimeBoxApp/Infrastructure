resource "aws_route53_record" "tfer--Z04888072LEKG4C13EV3W__2791d7e37dbe5e6ac7b3eae81471503e-002E-timebox-002E-guru-002E-_CNAME_" {
  name    = "_2791d7e37dbe5e6ac7b3eae81471503e.timebox.guru"
  records = ["_ec3285699f51cdeeabbbe7ba04840f37.mhbtsbpdnt.acm-validations.aws."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z04888072LEKG4C13EV3W_timebox-002E-guru.zone_id}"
}

resource "aws_route53_record" "tfer--Z04888072LEKG4C13EV3W__6e7deae7dc171943752fcb805a0ce437-002E-www-002E-timebox-002E-guru-002E-_CNAME_" {
  name    = "_6e7deae7dc171943752fcb805a0ce437.www.timebox.guru"
  records = ["_600632faa19a242579bec54576b9eead.mhbtsbpdnt.acm-validations.aws."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z04888072LEKG4C13EV3W_timebox-002E-guru.zone_id}"
}

resource "aws_route53_record" "tfer--Z04888072LEKG4C13EV3W__7900a659621164cbdda9fd54fc084bcd-002E-api-002E-timebox-002E-guru-002E-_CNAME_" {
  name    = "_7900a659621164cbdda9fd54fc084bcd.api.timebox.guru"
  records = ["_df524775c6ff0fb2e519fb2f4bc2dc51.mhbtsbpdnt.acm-validations.aws."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z04888072LEKG4C13EV3W_timebox-002E-guru.zone_id}"
}

resource "aws_route53_record" "tfer--Z04888072LEKG4C13EV3W_api-002E-timebox-002E-guru-002E-_AAAA_" {
  alias {
    evaluate_target_health = "true"
    name                   = "timebox-api-alb-558653624.eu-central-1.elb.amazonaws.com"
    zone_id                = "Z215JYRZR1TBD5"
  }

  name    = "api.timebox.guru"
  type    = "AAAA"
  zone_id = "${aws_route53_zone.tfer--Z04888072LEKG4C13EV3W_timebox-002E-guru.zone_id}"
}

resource "aws_route53_record" "tfer--Z04888072LEKG4C13EV3W_api-002E-timebox-002E-guru-002E-_A_" {
  alias {
    evaluate_target_health = "true"
    name                   = "timebox-api-alb-558653624.eu-central-1.elb.amazonaws.com"
    zone_id                = "Z215JYRZR1TBD5"
  }

  name    = "api.timebox.guru"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z04888072LEKG4C13EV3W_timebox-002E-guru.zone_id}"
}

resource "aws_route53_record" "tfer--Z04888072LEKG4C13EV3W_timebox-002E-guru-002E-_A_" {
  alias {
    evaluate_target_health = "false"
    name                   = "d27ep8n920yp15.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
  }

  name    = "timebox.guru"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z04888072LEKG4C13EV3W_timebox-002E-guru.zone_id}"
}

resource "aws_route53_record" "tfer--Z04888072LEKG4C13EV3W_timebox-002E-guru-002E-_NS_" {
  name    = "timebox.guru"
  records = ["ns-1527.awsdns-62.org.", "ns-1631.awsdns-11.co.uk.", "ns-300.awsdns-37.com.", "ns-867.awsdns-44.net."]
  ttl     = "60"
  type    = "NS"
  zone_id = "${aws_route53_zone.tfer--Z04888072LEKG4C13EV3W_timebox-002E-guru.zone_id}"
}

resource "aws_route53_record" "tfer--Z04888072LEKG4C13EV3W_timebox-002E-guru-002E-_SOA_" {
  name    = "timebox.guru"
  records = ["ns-867.awsdns-44.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl     = "900"
  type    = "SOA"
  zone_id = "${aws_route53_zone.tfer--Z04888072LEKG4C13EV3W_timebox-002E-guru.zone_id}"
}

resource "aws_route53_record" "tfer--Z04888072LEKG4C13EV3W_www-002E-timebox-002E-guru-002E-_A_" {
  alias {
    evaluate_target_health = "true"
    name                   = "timebox.guru"
    zone_id                = "Z04888072LEKG4C13EV3W"
  }

  name    = "www.timebox.guru"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z04888072LEKG4C13EV3W_timebox-002E-guru.zone_id}"
}
