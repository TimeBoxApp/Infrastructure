output "aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-eu-central-1-003A-513123869880-003A-listener-002F-app-002F-timebox-api-alb-002F-cdf2d02965c460d6-002F-5c1954391ddc1199_id" {
  value = "${aws_lb_listener.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-eu-central-1-003A-513123869880-003A-listener-002F-app-002F-timebox-api-alb-002F-cdf2d02965c460d6-002F-5c1954391ddc1199.id}"
}

output "aws_lb_target_group_tfer--ecs-timebox-api-timebox-tg_id" {
  value = "${aws_lb_target_group.tfer--ecs-timebox-api-timebox-tg.id}"
}

output "aws_lb_tfer--timebox-api-alb_id" {
  value = "${aws_lb.tfer--timebox-api-alb.id}"
}
