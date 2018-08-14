# Dockerized Django
Sample project on how to dockerize your Django project in development and production environments.

## Requirements
- Docker
- Docker Compose

## Development
- Clone project
- Create *.env* and *.env.secret* from the example files in the root folder and edit as appropriate
- Run `docker-compose up`
- Visit localhost:8000

## Production
- Follow the first 2 steps outlined above
- Run `docker-compose -f docker-compose.prod.yml up --build -d`
- Run `docker-compose -f docker-compose.prod.yml run web python3 manage.py migrate`
- Run `docker-compose -f docker-compose.prod.yml run web python3 manage.py collectstatic`
- Visit website