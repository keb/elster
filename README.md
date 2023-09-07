# elster

A collection of stuff for my servers.

## Help

For each new reverse proxy, follow these steps:
1. Create a new proxy-conf in `swag/config/nginx/proxy-confs`
2. Update the `SUBDOMAINS` env variable in `swag/run.sh` to include the subdomain of your service
3. Create a CNAME entry in your domain manager: `CNAME <container name>.<domain>.net <domain>.duckdns.org`

If you run into 502s, read: https://docs.linuxserver.io/general/swag#502
* In most cases the contents of `/config/nginx/resolver.conf`; should be ...resolver 127.0.0.11 valid=30s;, if this is not the case, you can delete it, and restart the container to have it regenerate.