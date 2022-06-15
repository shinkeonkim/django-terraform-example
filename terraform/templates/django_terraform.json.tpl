[
  {
    "name": "django-terraform",
    "image": "${docker_image_url_django}",
    "essential": true,
    "cpu": 10,
    "memory": 512,
    "links": [],
    "portMappings": [
      {
        "containerPort": 8000,
        "hostPort": 0,
        "protocol": "tcp"
      }
    ],
    "command": ["gunicorn", "-w", "3", "-b", ":8000", "hello_django.wsgi:application"],
    "environment": [],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/django-terraform",
        "awslogs-region": "${region}",
        "awslogs-stream-prefix": "django-terraform-log-stream"
      }
    }
  }
]
