# Daily Linode cleanup

Just a simple GitHub action that runs daily at 22:00 to delete all of the Linodes associated with your account with a specific tag.

A helpful cron time tool incase you want to adjust the timing: https://crontab.guru/

This can be manually run via the GitHub UI as well.

This only delete Linodes in with the tag `github-action-delete`
