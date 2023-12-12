#!/bin/bash

dockutil="/usr/local/bin/dockutil"

${dockutil} --add '/Applications/RedNet Control 2.app' --after 'zoom.us' --no-restart
${dockutil} --add '/Applications/Dante Controller.app' --after 'RedNet Control 2' --no-restart
${dockutil} --add '/Applications/WSControlApp.app' --after 'Dante Controller' --no-restart

${dockutil} --add 'http://kumo1616-2768.local' --label 'Video Switcher' --after 'Tech Suite Helpdesk' --no-restart