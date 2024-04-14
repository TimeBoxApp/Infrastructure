output "aws_ecs_cluster_tfer--TimeboxApiCluster_id" {
  value = "${aws_ecs_cluster.tfer--TimeboxApiCluster.id}"
}

output "aws_ecs_service_tfer--TimeboxApiCluster_timebox-api_id" {
  value = "${aws_ecs_service.tfer--TimeboxApiCluster_timebox-api.id}"
}

output "aws_ecs_task_definition_tfer--task-definition-002F-timebox-api-rollout_id" {
  value = "${aws_ecs_task_definition.tfer--task-definition-002F-timebox-api-rollout.id}"
}
