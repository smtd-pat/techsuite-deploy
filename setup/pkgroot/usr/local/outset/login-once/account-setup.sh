#!/bin/bash

user=$(stat -f %Su /dev/console)

cd /Users/$user/Desktop

if [ ! -f /Users/Shared/.cr_flag ]; then

    if [ ! -f /Users/$user/Desktop/.alias_flag_v1 ]; then
        echo "Creating new versions (Control Room)"
        ln -s '/Users/Shared/Pro Tools I:O Configuration/'
        ln -s '/Users/Shared/Dante Presets/'
        echo "" > .alias_flag_v1
    fi

    open -gja "XMon"
    open -gja "WSControlApp"

elif [ ! -f /Users/Shared/.davis_flag ]; then

    if [ ! -f /Users/$user/Desktop/.alias_flag_v1 ]; then
        echo "Creating new versions (Davis)"
        ln -s '/Users/Shared/Dante Presets/'
        echo "" > .alias_flag_v1
    fi

elif [ ! -f /Users/Shared/.er_flag ]; then

    if [ ! -f /Users/$user/Desktop/.alias_flag_v1 ]; then
        echo "Creating new versions (Edit Rooms)"
        ln -s '/Users/Shared/Dante Presets/'
        echo "" > .alias_flag_v1
    fi

else

    if [ ! -f /Users/$user/Desktop/.alias_flag_v1 ]; then
        echo "Creating new versions"
        echo "" > .alias_flag_v1
    fi

fi