# Daily Linode cleanup

Just a simple GitHub action that runs every 6 hours `0 */6 * * *` to delete all of the Linodes associated with your account with a specific tag.

A helpful cron time tool incase you want to adjust the timing: https://crontab.guru/

This can be manually run via the GitHub UI as well.

To make this work as a GitHub action create two GitHub action secrets with the repository

1. `LINODE_CLI_TOKEN`
2. `DELETE_TAG`
    - Then name all of your Linode instances with whatever tag you provide to be deleted
