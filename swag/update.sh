#!/usr/bin/env bash

docker pull lscr.io/linuxserver/swag:latest
docker stop swag
docker rm swag
docker image prune

echo "SWAG has been updated. Update run.sh with any domain configs, and then re-run run.sh."