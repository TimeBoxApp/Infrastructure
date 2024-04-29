resource "aws_ecs_cluster" "tfer--TimeboxApiCluster" {
  capacity_providers = ["FARGATE", "FARGATE_SPOT"]

  configuration {
    execute_command_configuration {
      logging = "DEFAULT"
    }
  }

  name = "TimeboxApiCluster"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}
