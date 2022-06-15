# Webapp

```
docker build -t django-terraform .

docker run -p 8007:8000 --name django-terraform django-terraform gunicorn webapp.wsgi:application --bind 0.0.0.0:8000
```
