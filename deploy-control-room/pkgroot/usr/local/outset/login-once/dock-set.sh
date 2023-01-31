#!/bin/bash

# set to the path of dockutil
dockutil="/usr/local/bin/dockutil"

# Delete everything from the dock and replace it with a specific
# selection of apps.
${dockutil} --remove all --no-restart
sleep 2 # we add a delay so that the dock has time to inialize the removal
${dockutil} --add /Applications/Safari.app --no-restart
${dockutil} --add /Applications/TextEdit.app --no-restart
${dockutil} --add /Applications/Chess.app --no-restart
${dockutil} --add /Applications/Utilities/Terminal.app --no-restart
${dockutil} --add /System/Library/CoreServices/Applications/Screen\ Sharing.app --no-restart
${dockutil} --add '/Applications' --view list --no-restart
${dockutil} --add '~/Downloads' --view fan
