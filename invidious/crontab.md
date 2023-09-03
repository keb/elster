# Some stuff to add to your crontab.

To see your crontab: `crontab -l`

To edit your crontab: `crontab -e`

To see cron logs: `grep CRON /var/log/syslog` or `tail -f /var/log/syslog | grep CRON` to tail

Restarts Invidious hourly because it has a terrible memory leak:
```
0 * * * * "/home/kevin/cron/restart_invidious.sh"
```