output "aws_cloudwatch_event_rule_tfer--ecs-managed-capacity-provider-rule_id" {
  value = "${aws_cloudwatch_event_rule.tfer--ecs-managed-capacity-provider-rule.id}"
}

output "aws_cloudwatch_event_target_tfer--ecs-managed-capacity-provider-rule-002F-ecs-managed-capacity-provider-target_id" {
  value = "${aws_cloudwatch_event_target.tfer--ecs-managed-capacity-provider-rule-002F-ecs-managed-capacity-provider-target.id}"
}

output "aws_cloudwatch_metric_alarm_tfer--TargetTracking-service-002F-TimeboxApiCluster-002F-timebox-api-AlarmHigh-b95b8b81-50b4-49b0-8cce-f39c93183257_id" {
  value = "${aws_cloudwatch_metric_alarm.tfer--TargetTracking-service-002F-TimeboxApiCluster-002F-timebox-api-AlarmHigh-b95b8b81-50b4-49b0-8cce-f39c93183257.id}"
}

output "aws_cloudwatch_metric_alarm_tfer--TargetTracking-service-002F-TimeboxApiCluster-002F-timebox-api-AlarmLow-b21c5c64-95bd-477d-9a20-60d2d7feb37e_id" {
  value = "${aws_cloudwatch_metric_alarm.tfer--TargetTracking-service-002F-TimeboxApiCluster-002F-timebox-api-AlarmLow-b21c5c64-95bd-477d-9a20-60d2d7feb37e.id}"
}
