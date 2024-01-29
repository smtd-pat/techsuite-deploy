#!/bin/bash

IGNORE_USERS=("Shared" "saltz" "techsuite_admin" "UM-Support" "smtd-ard" "UM-FileVault" "loginwindow" "smtdfilevault") # List of usernames to always ignore

DAYS_INACTIVE=21 # Number of days a user can be inactive before getting deleted

USER_LIST=`/usr/bin/find /Users -type d -maxdepth 1 -mindepth 1 -not -name "." -mtime +$DAYS_INACTIVE | /usr/bin/sed 's/\/Users\///'` # Get list of users

for user in $USER_LIST; do
    [[ " ${IGNORE_USERS[*]} " =~ " ${user} " ]] && continue # Ignore users in the IGNORE_USERS list
    [[ -n $(id -Gn $user | /usr/bin/grep -w admin) ]] && continue # Ignore users in the Admin group
    echo "Deleting $user"
    /usr/sbin/sysadminctl -deleteUser $user
done