#!/usr/bin/env bash

docker run --detach \
  --publish 8903:8080 \
  --env RULESET=https://t.ly/14PSf \
  --env USERPASS=keb:hunter2 \
  --name ladder \
  --network=swag-containers \
  ghcr.io/everywall/ladder:latest