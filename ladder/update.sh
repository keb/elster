#!/usr/bin/env bash

docker pull ghcr.io/everywall/ladder:latest
docker stop ladder
docker rm ladder
docker image prune

echo "ladder has been updated. re-run run.sh."