#!/bin/bash

systemsetup -setsleep 45
systemsetup -setcomputersleep 60
pmset -c disksleep 1
systemsetup -setwakeonnetworkaccess on
systemsetup -setrestartpowerfailure on
pmset -c darkwakes 1
pmset repeat wakeorpoweron weekdays 07:00:00
pmset repeat shutdown weekdays 00:30:00