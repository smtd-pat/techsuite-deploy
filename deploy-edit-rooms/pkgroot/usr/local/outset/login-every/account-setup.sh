#!/bin/bash

cd $HOME/Desktop || exit 1

flag='.ts_deploy_v1'

if [ ! -f $HOME/Desktop/$flag ]; then
    echo "Creating new versions (Edit Rooms)"
    ln -s '/Users/Shared/Dante Presets/' "$HOME/Desktop"
    echo "" > $flag
fi