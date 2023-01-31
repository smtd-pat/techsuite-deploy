#!/bin/bash

${dockutil} --add '/System/Applications/RedNet Control 2.app' --after 'Slack' --no-restart
${dockutil} --add '/System/Applications/Dante Controller.app' --after 'RedNet Control 2' --no-restart

${dockutil} --add 'http://kumo1616-2768.local' --label 'Video Switcher' --after 'Tech Suite Helpdesk' --no-restart