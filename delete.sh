#!/bin/bash
while read in; do
    linode-cli linodes delete --tags github-action-delete "$in"
done < linode-ids-delete.txt