#!/bin/bash

IGNORE_USERS=("Shared" "saltz" "techsuite_admin" "UM-Support" "smtd-ard" "UM-FileVault" "loginwindow" "smtdfilevault") # List of usernames to always ignore

DAYS_INACTIVE=21 # Number of days a user can be inactive before getting deleted
DAYS_INACTIVE_DISK_80_PERCENT=14
DAYS_INACTIVE_DISK_90_PERCENT=7

DISK_USAGE=`/usr/sbin/diskutil apfs list|/usr/bin/grep "Capacity In Use By Volumes:"|/usr/bin/awk '{print $10 " "  $11}'|/usr/bin/grep -o "\d*.\d*% used"|/usr/bin/grep -o "^\d*"` # Get disk usage percentage (as integer)

if [ $DISK_USAGE -gt 80 ]; then
    DAYS_INACTIVE=$DAYS_INACTIVE_DISK_80_PERCENT
elif [ $DISK_USAGE -gt 90 ]; then
    DAYS_INACTIVE=$DAYS_INACTIVE_DISK_90_PERCENT
elif [ $DISK_USAGE -gt 98 ]; then
    DAYS_INACTIVE=2
fi


USER_LIST=`/usr/bin/find /Users -type d -maxdepth 1 -mindepth 1 -not -name "." -mtime +$DAYS_INACTIVE | /usr/bin/sed 's/\/Users\///'` # Get list of users

for user in $USER_LIST; do
    [[ " ${IGNORE_USERS[*]} " =~ " ${user} " ]] && continue
    [[ -n $(id -Gn $user | /usr/bin/grep -w admin) ]] && continue
    echo "Deleting $user"
    /usr/sbin/sysadminctl -deleteUser $user
done