#!/bin/bash

cd /Users/Shared/.ts_deploy/techsuite-deploy || exit 1
if [[ `git status --porcelain` ]]; then
  git pull
  cd setup || exit 1
  make pkg
  installer -pkg techsuite-deploy-*.pkg -target /
  profiles -I -F "/Users/Shared/.ts_deploy/techsuite-deploy/Tech Suite.mobileconfig"
fi