#!/bin/bash

read -p "This will forcefully close Ableton if its open. Press [enter] to continue."
echo 
killall -q Ableton Live
sudo rm -rf $HOME/Library/Preferences/Ableton