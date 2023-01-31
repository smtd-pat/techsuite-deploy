#!/bin/bash

/usr/sbin/systemsetup -setsleep 45
/usr/sbin/systemsetup -setcomputersleep 60
/usr/sbin/systemsetup -setwakeonnetworkaccess on
/usr/sbin/systemsetup -setrestartpowerfailure on
/usr/bin/pmset -c disksleep 1
/usr/bin/pmset -c darkwakes 1
/usr/bin/pmset repeat restart weekdays 07:00:00