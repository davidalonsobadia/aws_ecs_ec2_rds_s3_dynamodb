[
  {
    "essential": true,
    "name": "task-test",
    "cpu": 256,
    "memory": 512,
    "image": "${REPOSITORY_URL}:latest",
    "environment": [
      {
        "name": "MYSQL_HOST",
        "value": "${MYSQL_HOST}"
      },
      {
        "name": "MYSQL_PORT",
        "value": "${MYSQL_PORT}"
      },
      {
        "name": "MYSQL_USERNAME",
        "value": "${MYSQL_USERNAME}"
      },
      {
        "name": "MYSQL_PASSWORD",
        "value": "${MYSQL_PASSWORD}"
      },
      {
        "name": "DB_NAME",
        "value": "${DB_NAME}"
      }
    ],
    "portMappings": [
      {
          "name": "task-test-5000-tcp",
          "containerPort": 5000,
          "hostPort": 5000,
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
