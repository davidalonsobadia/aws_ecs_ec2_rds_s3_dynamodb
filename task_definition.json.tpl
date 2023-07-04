[
  {
    "essential": true,
    "name": "task-test",
    "cpu": 256,
    "memory": 512,
    "image": "${REPOSITORY_URL}:latest",
    "environment": [],
    "portMappings": [
      {
          "name": "task-test-3000-tcp",
          "containerPort": 3000,
          "hostPort": 3000,
          "protocol": "tcp",
          "appProtocol": "http"
      }
    ],
    "log_configuration": {
      "log_driver": "awslogs",
      "options": {
        "awslogs-group": "${CLOUDWATCH_ECS}",
        "awslogs-region": "us-east-1",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
