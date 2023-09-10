# invidious

## updating
```
docker compose pull
docker compose up -d
docker image prune -f
```

## cron job
Restarts Invidious hourly because it has a terrible memory leak.
To see your crontab: `crontab -l`
To edit your crontab: `crontab -e`

To see cron logs (Raspberry Pi):
1. Enable cron logs in `/etc/rsyslog.conf`
2. Uncomment `# cron.*   /var/log/cron.log`
3. Reboot Pi
4. `cat /var/log/cron.log`

```
0 * * * * "/home/kevin/cron/restart_invidious.sh"
```