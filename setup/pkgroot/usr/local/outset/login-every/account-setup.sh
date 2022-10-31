#!/bin/bash

#user=$(stat -f %Su /dev/console)

#cd /Users/$user/Desktop

cd $HOME/Desktop || exit 1

flag='.ts_deploy_v1'

if [ ! -f /Users/Shared/.cr_flag ]; then

    if [ ! -f $HOME/Desktop/$flag ]; then
        echo "Creating new versions (Control Room)"
        ln -s '/Users/Shared/Pro Tools I:O Configuration/' "$HOME/Desktop"
        ln -s '/Users/Shared/Dante Presets/' "$HOME/Desktop"
        echo "" > $flag
    fi

    yes | cp "/Users/Shared/.ts_deploy/.docks/control-room/com.apple.dock.plist" "$HOME/Library/Preferences/com.apple.dock.plist"

    open -gja "XMon"
    open -gja "WSControlApp"

elif [ ! -f /Users/Shared/.davis_flag ]; then

    if [ ! -f $HOME/Desktop/$flag ]; then
        echo "Creating new versions (Davis)"
        ln -s '/Users/Shared/Dante Presets/' "$HOME/Desktop"
        echo "" > $flag
    fi

    yes | cp "/Users/Shared/.ts_deploy/.docks/davis/com.apple.dock.plist" "$HOME/Library/Preferences/com.apple.dock.plist"

elif [ ! -f /Users/Shared/.er_flag ]; then

    if [ ! -f $HOME/Desktop/$flag ]; then
        echo "Creating new versions (Edit Rooms)"
        ln -s '/Users/Shared/Dante Presets/' "$HOME/Desktop"
        echo "" > $flag
    fi

    yes | cp "/Users/Shared/.ts_deploy/.docks/edit-rooms/com.apple.dock.plist" "$HOME/Library/Preferences/com.apple.dock.plist"

elif [ ! -f /Users/Shared/.mtl_flag ]; then

    if [ ! -f $HOME/Desktop/$flag ]; then
        echo "Creating new versions"
        echo "" > $flag
    fi

    yes | cp "/Users/Shared/.ts_deploy/.docks/mtl/com.apple.dock.plist" "$HOME/Library/Preferences/com.apple.dock.plist"

fi