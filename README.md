# Linode Daily Cleanup

A GitHub Action that runs every 12 hours (`0 */12 * * *`) to delete Linode instances whose name contains `atb`.

This is designed to clean up downstream clusters created by Rancher in Linode — since Rancher-provisioned nodes can't have custom tags applied, deletion is done by label name instead.

The action runs on GitHub's infrastructure so your local machine doesn't need to be on.

Public repositories get free GitHub Actions minutes.

Adjust the schedule at [crontab.guru](https://crontab.guru/) if needed. Can also be triggered manually from the GitHub Actions UI.

## Setup

Create two GitHub Actions secrets in the repository:

| Secret | Description |
|---|---|
| `LINODE_CLI_TOKEN` | Your Linode personal access token with read/write Linodes scope |
| `USER_INITIALS` | Your initials (e.g. `atb`) — any Linode whose name contains this string will be deleted |

The match is case-insensitive and substring-based, so it covers all positions and combinations — `atb-cluster`, `dev-atb-01`, `atbdsc`, `dscatb12`, etc. are all matched if your initials are `atb`.

## Keep Actions Active

> Updated April 2026 — GitHub disables scheduled workflows on inactive public repos after 60 days. Update this section periodically to keep the action running.
