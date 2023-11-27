# Daily Linode cleanup

Just a simple GitHub action that runs every 12 hours `0 */12 * * *` to delete all the Linode instances associated with your account with a specific tag.

The benefit of this running is that it's a GitHub action. So you don't need your local machine on/running at all.

If you run this as a public repository it's also free. GitHub's actions are free for public repositories.

A helpful cron time tool incase you want to adjust the timing: https://crontab.guru/

This can be manually run via the GitHub UI as well.

To make this work as a GitHub action create two GitHub action secrets with the repository

1. `LINODE_CLI_TOKEN`
2. `DELETE_TAG`
    - Then name all of your Linode instances with whatever tag you provide to be deleted

# README Update
>Section to update to keep the GitHub actions running. Updated 11/27/2023.