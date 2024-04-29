resource "aws_ecs_service" "tfer--TimeboxApiCluster_timebox-api" {
  capacity_provider_strategy {
    base              = "0"
    capacity_provider = "FARGATE"
    weight            = "1"
  }

  cluster = "TimeboxApiCluster"

  deployment_circuit_breaker {
    enable   = "true"
    rollback = "true"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "1"
  enable_ecs_managed_tags            = "true"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "0"

  load_balancer {
    container_name   = "api-timebox"
    container_port   = "3000"
    target_group_arn = "arn:aws:elasticloadbalancing:eu-central-1:513123869880:targetgroup/ecs-timebox-api-timebox-tg/fcf873c44ad7b95b"
  }

  name = "timebox-api"

  network_configuration {
    assign_public_ip = "true"
    security_groups  = ["sg-02ebeeaa2e7d3a447", "sg-0410b5f573a36a78d", "sg-0a04b97b4b2d9572e", "sg-0ab376280b749056d", "sg-0ad625daff254e68a"]
    subnets          = ["subnet-01c8da1640ed830ef", "subnet-044b2f950de1475c7", "subnet-0a0c81a7da52cd124"]
  }

  platform_version    = "1.4.0"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:eu-central-1:513123869880:task-definition/timebox-api-rollout:22"
}
