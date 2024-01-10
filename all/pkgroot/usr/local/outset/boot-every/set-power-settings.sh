#!/bin/bash

/usr/sbin/systemsetup -setsleep 90
/usr/sbin/systemsetup -setcomputersleep 105
/usr/sbin/systemsetup -setwakeonnetworkaccess on
/usr/sbin/systemsetup -setrestartpowerfailure on
/usr/bin/pmset -c disksleep 1
/usr/bin/pmset -c darkwakes 1
/usr/bin/pmset repeat restart MTWRFSU 07:00:00