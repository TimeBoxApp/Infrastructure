resource "aws_ecs_task_definition" "tfer--task-definition-002F-timebox-api-rollout" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"essential\":true,\"healthCheck\":{\"command\":[\"CMD-SHELL\",\"curl -f http://localhost:3000/health || exit 1\"],\"interval\":30,\"retries\":3,\"startPeriod\":10,\"timeout\":5},\"image\":\"513123869880.dkr.ecr.eu-central-1.amazonaws.com/timebox-api:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/timebox-api-rollout\",\"awslogs-region\":\"eu-central-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"api-timebox\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":3000,\"hostPort\":3000,\"name\":\"api-timebox-3000-tcp\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  execution_role_arn       = "arn:aws:iam::513123869880:role/ecsTaskExecutionRole"
  family                   = "timebox-api-rollout"
  memory                   = "1024"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::513123869880:role/ecsTaskExecutionRole"
}
