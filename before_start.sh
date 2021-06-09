#!/bin/sh

echo "Create app_main_bridge network if nof exists"
docker network inspect app_main_bridge >/dev/null 2>&1 || \
    docker network create --driver bridge app_main_bridge
