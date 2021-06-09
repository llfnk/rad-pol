#!/bin/sh

./../updateSources.sh origin master
./check_dists.sh

#rm -f  ./app_update.lock
./set_current_uid.sh
echo "Build"
docker-compose -f docker-compose-dev.yml build

echo "Push"
docker-compose -f docker-compose-dev.yml push

echo "Deploying stack";
COMPOSE_PROJECT_NAME="$(grep COMPOSE_PROJECT_NAME= .env | cut -d '=' -f2)"

CURRENT_UID_GID="$(id -u):$(id -g)" \
CURRENT_UID="$(id -u)" \
CURRENT_GID="$(id -g)" \
HOSTNAME_NGINX_EXTERNAL="$(grep HOSTNAME_NGINX_EXTERNAL= .env | cut -d '=' -f2)" \
HOSTNAME_STRAPI_EXTERNAL="$(grep HOSTNAME_STRAPI_EXTERNAL= .env | cut -d '=' -f2)" \
STRAPI_DATABASE_CLIENT="$(grep STRAPI_DATABASE_CLIENT= .env | cut -d '=' -f2)" \
STRAPI_DATABASE_NAME="$(grep STRAPI_DATABASE_NAME= .env | cut -d '=' -f2)" \
HOSTNAME_POSTGRES_LOCAL="$(grep HOSTNAME_POSTGRES_LOCAL= .env | cut -d '=' -f2)" \
POSTGRES_PORT="$(grep POSTGRES_PORT= .env | cut -d '=' -f2)" \
POSTGRES_USER="$(grep POSTGRES_USER= .env | cut -d '=' -f2)" \
POSTGRES_PASSWORD="$(grep POSTGRES_PASSWORD= .env | cut -d '=' -f2)" \
STRAPI_PORT="$(grep STRAPI_PORT= .env | cut -d '=' -f2)" \
FRONT_PORT="$(grep FRONT_PORT= .env | cut -d '=' -f2)" \
ADMIN_JWT_SECRET="$(grep ADMIN_JWT_SECRET= .env | cut -d '=' -f2)" \
docker stack deploy -c ./docker-compose-dev.yml $COMPOSE_PROJECT_NAME
