output "aws_cloudwatch_event_rule_tfer--ecs-managed-capacity-provider-rule_id" {
  value = "${aws_cloudwatch_event_rule.tfer--ecs-managed-capacity-provider-rule.id}"
}

output "aws_cloudwatch_event_target_tfer--ecs-managed-capacity-provider-rule-002F-ecs-managed-capacity-provider-target_id" {
  value = "${aws_cloudwatch_event_target.tfer--ecs-managed-capacity-provider-rule-002F-ecs-managed-capacity-provider-target.id}"
}

output "aws_cloudwatch_metric_alarm_tfer--api-cpu-max_id" {
  value = "${aws_cloudwatch_metric_alarm.tfer--api-cpu-max.id}"
}

output "aws_cloudwatch_metric_alarm_tfer--max-cpu_id" {
  value = "${aws_cloudwatch_metric_alarm.tfer--max-cpu.id}"
}
