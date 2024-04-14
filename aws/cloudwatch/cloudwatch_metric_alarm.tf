resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-TimeboxApiCluster-002F-timebox-api-AlarmHigh-b95b8b81-50b4-49b0-8cce-f39c93183257" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:eu-central-1:513123869880:scalingPolicy:e07dd17d-bc76-4aa9-898d-32c898b5da3e:resource/ecs/service/TimeboxApiCluster/timebox-api:policyName/timebox-api-autoscaling:createdBy/7d1b6eec-6f00-4db9-bcec-9d160a413e87"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:eu-central-1:513123869880:scalingPolicy:e07dd17d-bc76-4aa9-898d-32c898b5da3e:resource/ecs/service/TimeboxApiCluster/timebox-api:policyName/timebox-api-autoscaling:createdBy/7d1b6eec-6f00-4db9-bcec-9d160a413e87."
  alarm_name          = "TargetTracking-service/TimeboxApiCluster/timebox-api-AlarmHigh-b95b8b81-50b4-49b0-8cce-f39c93183257"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    ClusterName = "TimeboxApiCluster"
    ServiceName = "timebox-api"
  }

  evaluation_periods = "3"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "70"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-TimeboxApiCluster-002F-timebox-api-AlarmLow-b21c5c64-95bd-477d-9a20-60d2d7feb37e" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:eu-central-1:513123869880:scalingPolicy:e07dd17d-bc76-4aa9-898d-32c898b5da3e:resource/ecs/service/TimeboxApiCluster/timebox-api:policyName/timebox-api-autoscaling:createdBy/7d1b6eec-6f00-4db9-bcec-9d160a413e87"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:eu-central-1:513123869880:scalingPolicy:e07dd17d-bc76-4aa9-898d-32c898b5da3e:resource/ecs/service/TimeboxApiCluster/timebox-api:policyName/timebox-api-autoscaling:createdBy/7d1b6eec-6f00-4db9-bcec-9d160a413e87."
  alarm_name          = "TargetTracking-service/TimeboxApiCluster/timebox-api-AlarmLow-b21c5c64-95bd-477d-9a20-60d2d7feb37e"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    ClusterName = "TimeboxApiCluster"
    ServiceName = "timebox-api"
  }

  evaluation_periods = "15"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "63"
  treat_missing_data = "missing"
  unit               = "Percent"
}
