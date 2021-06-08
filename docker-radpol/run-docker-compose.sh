#!/bin/sh

./check_dists.sh
rm -f  ./../app_update.lock
./set_current_uid.sh
echo "Setup stack"
CURRENT_UID_GID="$(id -u):$(id -g)" \
CURRENT_UID="$(id -u)" \
CURRENT_GID="$(id -g)" \
APACHE_RUN_USER="#$(id -u)" \
APACHE_RUN_GROUP="#$(id -g)" \
docker-compose up --build --remove-orphans