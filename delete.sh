#!/bin/bash
while read in; do
    linode-cli linodes delete "$in"
done < linode-ids-delete.txt
