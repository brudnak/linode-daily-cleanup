#!/bin/bash

# runs every 8 hours
while read in; do
    linode-cli linodes delete "$in"
done < linode-ids-delete.txt