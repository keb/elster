#!/usr/bin/env bash

docker container restart swag

# let you actually edit the files and folders created by SWAG
sudo chown -hR $(id -u):$(id -g) "$(pwd)/config"