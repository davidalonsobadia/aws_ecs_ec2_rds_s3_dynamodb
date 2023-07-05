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
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-create-group": "true",
        "awslogs-group": "${CLOUDWATCH_ECS}",
        "awslogs-region": "us-east-1",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
