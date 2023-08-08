#!/usr/bin/env bash

CONFIG_DIR="$(pwd)/config"

docker run -d \
  --name=swag \
  --cap-add=NET_ADMIN \
  --env PUID=1000 \
  --env PGID=1000 \
  --env TZ=Etc/UTC \
  --env URL=sheev.net \
  --env VALIDATION=http \
  --env SUBDOMAINS=pi \
  --env CERTPROVIDER= `#optional` \
  --env DNSPLUGIN=cloudflare `#optional` \
  --env PROPAGATION= `#optional` \
  --env EMAIL=keb@sheev.net \
  --env ONLY_SUBDOMAINS=true `#optional` \
  --env EXTRA_DOMAINS= `#optional` \
  --env STAGING=false `#optional` \
  --publish 443:443 \
  --publish 80:80 `#optional` \
  --volume $CONFIG_DIR:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/swag:latest