#!/bin/sh

echo "Set CURRENT_UID_GID"

sed -i "s/CURRENT_UID_GID=.*/CURRENT_UID_GID=$(id -u):$(id -g)/" .env
sed -i "s/CURRENT_UID=.*/CURRENT_UID=$(id -u)/" .env
sed -i "s/CURRENT_GID=.*/CURRENT_GID=$(id -g)/" .env