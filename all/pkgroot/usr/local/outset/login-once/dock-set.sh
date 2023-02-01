#!/bin/bash

# set to the path of dockutil
dockutil="/usr/local/bin/dockutil"

# Delete everything from the dock and replace it with a specific
# selection of apps.
${dockutil} --remove all --no-restart
sleep 2 # we add a delay so that the dock has time to inialize the removal
${dockutil} --add '/System/Applications/Launchpad.app' --no-restart
${dockutil} --add '/Applications/Log Out.app' --no-restart
${dockutil} --add '/Applications/Safari.app' --no-restart
${dockutil} --add '/Applications/Google Chrome.app' --no-restart
${dockutil} --add '/Applications/Firefox.app' --no-restart
${dockutil} --add '/Applications/Spotify.app' --no-restart
${dockutil} --add '/Applications/QuickTime Player.app' --no-restart
${dockutil} --add '/Applications/VLC.app' --no-restart
${dockutil} --add '/Applications/Audacity.app' --no-restart
${dockutil} --add '/Applications/Ableton Live 11 Suite.app' --no-restart
${dockutil} --add '/Applications/Logic Pro.app' --no-restart
${dockutil} --add '/Applications/Pro Tools.app' --no-restart
${dockutil} --add '/Applications/Reaper.app' --no-restart
${dockutil} --add '/Applications/Adobe Audition 2023/Adobe Audition 2023.app' --no-restart
${dockutil} --add '/Applications/Adobe Premiere Pro 2023/Adobe Premiere Pro 2023.app' --no-restart
${dockutil} --add '/Applications/Final Cut Pro.app' --no-restart
${dockutil} --add '/Applications/Sibelius.app' --no-restart
${dockutil} --add '/Applications/Finale.app' --no-restart
${dockutil} --add '/Applications/MuseScore 3.app' --no-restart
${dockutil} --add '/Applications/Max.app' --no-restart
${dockutil} --add '/Applications/miniAudicle.app' --no-restart
${dockutil} --add '/Applications/Processing.app' --no-restart
${dockutil} --add '/Applications/zoom.us.app' --no-restart
${dockutil} --add '/Applications/Slack.app' --no-restart

${dockutil} --add '/System/Applications/Utilities/Audio MIDI Setup.app' --no-restart
${dockutil} --add 'https://sites.google.com/umich.edu/pat/home' --label 'Tech Suite Wiki' --no-restart
${dockutil} --add 'https://sites.google.com/umich.edu/pat/helpdesk' --label 'Tech Suite Helpdesk' --no-restart

if [[ -f "/usr/local/outset/extra/dock-set-custom.sh" ]]; then
    ./usr/local/outset/extra/dock-set-custom.sh
fi

${dockutil} --add ~/Downloads --view fan