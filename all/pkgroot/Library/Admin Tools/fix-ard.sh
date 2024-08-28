#!/bin/bash

login smtd-ard
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -on -users smtd-ard -privs -all -restart -agent -menu