# 💚 Daily Linode cleanup

>🚨 WARNING: Don't run this action if you're a Linode Administrator. It deletes all Linodes that your account has access to / can see.

Just a simple GitHub action that runs daily at 8:00PM to delete all of the Linodes associated with your account.

Runs daily at 8:00PM thanks to this section in the workflow:

```yml
- cron: "0 20 * * *"
```

A helpful cron time tool incase you want to adjust the timing: https://crontab.guru/

This can be manually run via the UI thanks to:

```yml
workflow_dispatch:
```
