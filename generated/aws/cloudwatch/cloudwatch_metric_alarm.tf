resource "aws_cloudwatch_metric_alarm" "tfer--api-cpu-max" {
  actions_enabled     = "true"
  alarm_name          = "api-cpu-max"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "1"
  evaluation_periods  = "1"
  metric_name         = "service-max-cpu"
  namespace           = "..."
  period              = "60"
  statistic           = "Maximum"
  threshold           = "70"
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--max-cpu" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:eu-central-1:513123869880:scalingPolicy:e07dd17d-bc76-4aa9-898d-32c898b5da3e:resource/ecs/service/TimeboxApiCluster/timebox-api:policyName/increase-tasks-api-timebox"]
  alarm_name          = "max-cpu"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = "1"

  dimensions = {
    ClusterName = "TimeboxApiCluster"
    ServiceName = "timebox-api"
  }

  evaluation_periods = "1"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Maximum"
  threshold          = "60"
  treat_missing_data = "missing"
  unit               = "Percent"
}
