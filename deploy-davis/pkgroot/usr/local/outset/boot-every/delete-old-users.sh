#!/bin/bash

EXPLICIT_IGNORE=("Shared" "saltz" "techsuite_admin" "UM-Support" "smtd-ard" "UM-FileVault" "loginwindow" "smtdfilevault") # List of usernames to always ignore

DAYS_INACTIVE=21 # Number of days a user can be inactive before getting deleted

USER_LIST=`find /Users -type d -maxdepth 1 -mindepth 1 -not -name "
." -mtime +$DAYS_INACTIVE | sed 's/\/Users\///'` # Get list of users

for user in $USER_LIST; do
    [[ " ${EXPLICIT_IGNORE[*]} " =~ " ${user} " ]] && continue
    [[ -n $(id -Gn $user | grep -w admin) ]] && continue
    echo "Deleting $user"
    dscl . delete "/Users/$user"
    rm -r "/Users/$user"
done