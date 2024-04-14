resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-eu-central-1-003A-513123869880-003A-listener-002F-app-002F-timebox-api-alb-002F-cdf2d02965c460d6-002F-5c1954391ddc1199" {
  certificate_arn = "arn:aws:acm:eu-central-1:513123869880:certificate/ecb7f840-5b9e-435a-8228-282a5551ea78"

  default_action {
    target_group_arn = "arn:aws:elasticloadbalancing:eu-central-1:513123869880:targetgroup/ecs-timebox-api-timebox-tg/fcf873c44ad7b95b"
    type             = "forward"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--timebox-api-alb_id}"
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
}
