# Webapp

```
docker build -t django-ecs .

docker run -p 8007:8000 --name django-test django-ecs gunicorn webapp.wsgi:application --bind 0.0.0.0:8000
```
