#!/bin/bash

# set to the path of dockutil
dockutil="/usr/local/bin/dockutil"

# Delete everything from the dock and replace it with a specific
# selection of apps.
${dockutil} --remove all --no-restart
sleep 2 # we add a delay so that the dock has time to inialize the removal
${dockutil} --add '/System/Applications/Launchpad.app' --no-restart
${dockutil} --add '/System/Applications/Safari.app' --no-restart
${dockutil} --add '/System/Applications/Google Chrome.app' --no-restart
${dockutil} --add '/System/Applications/Firefox.app' --no-restart
${dockutil} --add '/System/Applications/Spotify.app' --no-restart
${dockutil} --add '/System/Applications/QuickTime Player.app' --no-restart
${dockutil} --add '/System/Applications/VLC.app' --no-restart
${dockutil} --add '/System/Applications/Audacity.app' --no-restart
${dockutil} --add '/System/Applications/Ableton Live 11 Suite.app' --no-restart
${dockutil} --add '/System/Applications/Logic Pro.app' --no-restart
${dockutil} --add '/System/Applications/Pro Tools.app' --no-restart
${dockutil} --add '/System/Applications/Reaper.app' --no-restart
${dockutil} --add '/System/Applications/Adobe Audition 2023/Adobe Audition 2023.app' --no-restart
${dockutil} --add '/System/Applications/Adobe Premiere Pro 2023/Adobe Premiere Pro 2023.app' --no-restart
${dockutil} --add '/System/Applications/Final Cut Pro.app' --no-restart
${dockutil} --add '/System/Applications/Sibelius.app' --no-restart
${dockutil} --add '/System/Applications/Finale.app' --no-restart
${dockutil} --add '/System/Applications/MuseScore 3.app' --no-restart
${dockutil} --add '/System/Applications/Max.app' --no-restart
${dockutil} --add '/System/Applications/miniAudicle.app' --no-restart
${dockutil} --add '/System/Applications/Processing.app' --no-restart
${dockutil} --add '/System/Applications/zoom.us.app' --no-restart
${dockutil} --add '/System/Applications/Slack.app' --no-restart

${dockutil} --add '/System/Applications/Utilities/Audio MIDI Setup.app' --no-restart
${dockutil} --add 'https://sites.google.com/umich.edu/pat/home' --label 'Tech Suite Wiki' --no-restart
${dockutil} --add 'https://sites.google.com/umich.edu/pat/helpdesk' --label 'Tech Suite Helpdesk' --no-restart

if [[ -f "/usr/local/outset/extra/dock-set-custom.sh" ]]; then
    ./usr/local/outset/extra/dock-set-custom.sh
fi

${dockutil} --add ~/Downloads --view fan